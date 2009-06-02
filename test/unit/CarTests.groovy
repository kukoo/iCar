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

import grails.test.*

class CarTests extends GrailsUnitTestCase {
	def	carOwner
	
    protected void setUp() {
        super.setUp()
		mockDomain(Car)
		mockDomain(User)
		/*
		String username
		String userRealName
		String passwd
		boolean enabled
		String email
		boolean emailShow
		String description = ''
		*/
		carOwner = new User(username: "owner",
							userRealName: "A Car Owner",
							passwd: "12345",
							enabled: true,
							email: "carowner@some.com",
							emailShow: false,
							description: "Car Owner's information")
		assertTrue 'validation should have passed', carOwner.validate()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testNewCar() {
		def car = new Car(name: "Sagitar",
						manufacturer: "VolksWagen",
						currentMileage: new BigDecimal("37500"),
						initialMileage: new BigDecimal("1"),
						owner: carOwner)
		assertTrue 'validation should have passed', car.validate()				
    }
}
