package com.nghia.shop

import java.util.Date;

class OrderPaymentTracking {
	
	/****************************
	 * Payment's status
	 ****************************/
	Date dateOfPayment
	def amount //Ex: $9.99
	/**
	 * 0: cash
	 * 1: bank transfer
	 * 2: paypal
	 * ...
	 */
	int paymentMethod
	boolean paymentResult
	
    static constraints = {
    }
}
