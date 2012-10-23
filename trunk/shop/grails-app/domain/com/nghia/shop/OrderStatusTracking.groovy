package com.nghia.shop

class OrderStatusTracking {
	/**
	 * Date of status
	 */
	Date date
	
	/**
	 * "PendingPayment"
	 * "PaymentConfirmed"
	 * "PrepareShipment"
	 * "FullShipment"
	 * "Completed"
	 */
	String status
	String note
	
    static constraints = {
    }
}
