package com.nghia.shop

class ProductExtend {
	Product product
	String productColor
	String productSize
	boolean isDefault
	
	transient isSelected = false
	
	//TODO: need to check again
    static constraints = {
		productColor nullable: true
		productSize nullable:true
    }
}
