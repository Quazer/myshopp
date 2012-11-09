package com.nghia.shop

class ShoppingCart {
	Product product
	Member member
	
	int quantity = 1
	int giftQuantity = 0
	int shippedQuantity = 0
	ShippingMethod shippingMethod
	
	Date dateAdded = new Date()
	
	//TODO: need to modify
    static constraints = {
		shippingMethod nullable:true
    }
}
