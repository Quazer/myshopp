package com.nghia.shop

class ShippingDetail {
	String name
	String street1
	String street2
	String city
	String state
	String country
	String zip
	String mobilePhone
	String homePhone
	
    static constraints = {
		street1 nullable:true
		street2 nullable:true
		city nullable:true
		state nullable:true
		country nullable:true
		zip nullable:true
		mobilePhone nullable:true
		homePhone nullable:true
    }
}
