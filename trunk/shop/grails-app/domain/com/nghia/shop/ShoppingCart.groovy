package com.nghia.shop

class ShoppingCart {
	Product product
	Member member
	long orderNumber
	int quantity = 1
	int giftQuantity = 0
	int shippedQuantity = 0
	ShippingMethod shippingMethod
	float shippingMethodPrice
	
	ProductExtend productExtend
	
	String messageToShop = ""
	
	Date dateAdded = new Date()
	
	boolean isConfirmed
	boolean isCheckout
	float discount = 0
	
	//TODO: need to modify
    static constraints = {
		shippingMethod nullable:true
		messageToShop blank:true
		productExtend nullable:true
//		year(matches:/\d{4}/)
//		month(matches:/\d{2}/)
//		day(matches:/\d{2}/)
		orderNumber unique:true, nullable:true
    }

}
