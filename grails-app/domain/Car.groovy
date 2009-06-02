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

class Car {
	//owner information
	User	owner
	
	// basic information
	String	name
	String	manufacturer
	String	vin
	BigDecimal currentMileage
	
	
	//additional information
	String	color
	String	paintingCode
	int		tankVolume
	
	//engine
	String	engine
	int		gasDiscplacement
	String	dischargeStandard
	
	//purchase information
	Date	purchaseDate
	int		initialMileage
	float	price
	float	platePrice
	float	tax
	String	vendor
	String	vendorAddress
	String	vendorPhone
	String	vendorContact
	
	//loan information
	String	loanBank
	float	loan
	int		termOfYears
	
	Date	nextInspectionDate
	String	remarks
	byte[]	image
	
	static	belongsTo = User
	
    static constraints = {
		name(blank: false)
		manufacturer(blank: false)
		currentMileage(blank: false)
		initialMileage(blank: false)
		image(nullable: true, size:0..1000000)
	}
}
