package com.nghia.shop

import java.util.Date;

class OrderShippedTracking {
	
	/****************************
	 * Shipment's status
	 ****************************/
    Date dateOfShip
    int sequence // how many packages for this order
    String trackingNumber // if this product is shipped by TNT, Fedex, ...
	
    static constraints = {
    }
}
