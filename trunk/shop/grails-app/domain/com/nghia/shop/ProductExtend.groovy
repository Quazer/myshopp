package com.nghia.shop

class ProductExtend {
	Product product
	String productColor
	String productSize
	boolean isDefault
	
	transient isColorSelected = false
	transient isSizeSelected = false
	
	transient enableColor4Buyer = true
	transient enableSize4Buyer = true
	
	// Remain product in shop
	int inventory
	
	//TODO: need to check again
    static constraints = {
		productColor nullable: true
		productSize nullable:true
    }
}
