package com.nghia.shop

class ShippingMethod {
	String name
	String description
	String timeOfDeliver // ex: 3-4 weeks
	String timeOfVerify // ex: 2-5 days
	String trackingURL
	
    static constraints = {
    }
	
	String toString() {
		name + " (" + CommonUtils.shippingMethodPrice(price)
	}
}
