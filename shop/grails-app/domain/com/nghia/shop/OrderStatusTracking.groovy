package com.nghia.shop

class OrderStatusTracking {
	/**
	 * Date of status
	 */
	Date date = new Date()
	
	/**
	 * "PendingPayment"
	 * "PaymentConfirmed"
	 * "PrepareShipment"
	 * "FullShipment"
	 * "Completed"
	 */
	String status
	String note = ""
	static hasMany = [shoppingCart: ShoppingCart]
	
    static constraints = {
    }
}
