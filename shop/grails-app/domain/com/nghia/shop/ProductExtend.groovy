package com.nghia.shop

class ProductExtend {
	Product product
	String productColor
	String productSize
	boolean isDefault
	
	transient isSelected = false
	
	// Remain product in shop
	int inventory
	
	//TODO: need to check again
    static constraints = {
		productColor nullable: true
		productSize nullable:true
    }
}
