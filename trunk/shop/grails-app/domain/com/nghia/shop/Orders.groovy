package com.nghia.shop

class Orders {

static hasMany = [items : ShoppingCart, 
		orderPaymentTracking: OrderPaymentTracking,
		orderShippedTracking: OrderShippedTracking]

	String orderNumber
	
	/**
	 * Order's status
	 */
	boolean isReceived
	boolean isPaymentReceived
	boolean isShipped
	boolean isDone
	
	OrderStatusTracking orderTracking
	
	/**
	 * This item will be defined by customer
	 */
	String memo
	
	/**
	 * Shipping method (ex: SuperSaver) 
	 */
	ShippingMethod shippingMethod
	
	/****************************
	 * Payment's status
	 * Use "orderPaymentTracking"
	 ****************************/
	
	/****************************
	 * Shipment's status
	 * Use "orderShippedTracking"
	 ****************************/
	
    static constraints = {
		orderNumber blank: false, unique: true
    }
}
