package com.nghia.shop

class ProductExtend {
	Product product
	String productColor
	String productSize = ''
	boolean isDefault
	
	transient isColorSelected = false
	transient isSizeSelected = false
	
	transient enableColor4Buyer = true
	transient enableSize4Buyer = true
	
	// Remain product in shop
	int inventory
	
	// Price of product based on Color and Size
	// default price will be productInstance.price
	float price
	
	//TODO: need to check again
    static constraints = {
		productColor nullable: true
		productSize nullable:true
    }
}
