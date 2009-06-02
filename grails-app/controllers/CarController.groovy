/* Copyright 2009 Lin Yong
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

class CarController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ carInstanceList: Car.list( params ), carInstanceTotal: Car.count() ]
    }

    def show = {
        def carInstance = Car.get( params.id )

        if(!carInstance) {
            flash.message = "Car not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ carInstance : carInstance ] }
    }

    def delete = {
        def carInstance = Car.get( params.id )
        if(carInstance) {
            try {
                carInstance.delete()
                flash.message = "Car ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Car ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Car not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def carInstance = Car.get( params.id )

        if(!carInstance) {
            flash.message = "Car not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ carInstance : carInstance ]
        }
    }

    def update = {
        def carInstance = Car.get( params.id )
        if(carInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(carInstance.version > version) {
                    
                    carInstance.errors.rejectValue("version", "car.optimistic.locking.failure", "Another user has updated this Car while you were editing.")
                    render(view:'edit',model:[carInstance:carInstance])
                    return
                }
            }
            carInstance.properties = params
            if(!carInstance.hasErrors() && carInstance.save()) {
                flash.message = "Car ${params.id} updated"
                redirect(action:show,id:carInstance.id)
            }
            else {
                render(view:'edit',model:[carInstance:carInstance])
            }
        }
        else {
            flash.message = "Car not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def carInstance = new Car()
        carInstance.properties = params
        return ['carInstance':carInstance]
    }

    def save = {
        def carInstance = new Car(params)
        if(!carInstance.hasErrors() && carInstance.save()) {
            flash.message = "Car ${carInstance.id} created"
            redirect(action:show,id:carInstance.id)
        }
        else {
            render(view:'create',model:[carInstance:carInstance])
        }
    }
}
