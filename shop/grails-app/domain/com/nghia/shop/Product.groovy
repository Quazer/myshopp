package com.nghia.shop

class Product {

	/**
	 * Product will be sold by the supplier
	 */
	static belongsTo = [supplier : Member, category : Category]
	String sku
	
	String name
	String overview
	String specification
	
	//Ex: 100 pieces / lot , $1.05 / piece
	String note = ""
	
	//User supplier
	//Category category
	/**
	 * Price
	 */
	float purchargePrice
	float importPrice // root price
	int discount = 0
	
	float bulkprice = 0.00
	int bulkItem = 1
	
	// it's used for "discount7" div at "/category/_product_list.gsp"	
	float discountPrice = 0.00
	float discountPriceFixed = 0.00
	
	// "set", "piece", "lot" ... all value will be Message Key
	String unit 
	
	// Package info --------------------
	// su dung tai "product detail", phan "packing details"
	// ex: "1" piece
	//  "100" {itemUnit}/lot 
	int numberItemPerUnit = 1 //default
	// "set", "piece", "lot" ... all value will be Message Key
	String itemUnit = unit
	String packageWeight
	String packageSize
	// Package info --------------------
	
	boolean isSoldOut = false
	
	// main product image
	ImageStore productImage // prop of this object "isSelected" will be set as TRUE when CREATE Product
	
	// Remain product in shop
	//int inventory

	//Price of Shipping
	// Ex: China post , price = 0	
	ShippingMethod shippingMethod1
	ShippingMethod shippingMethod2
	ShippingMethod shippingMethod3
	ShippingMethod shippingMethod4
	ShippingMethod shippingMethod5
	ShippingMethod shippingMethod6
	ShippingMethod shippingMethod7
	ShippingMethod shippingMethod8
	float shippingMethodPrice1
	float shippingMethodPrice2
	float shippingMethodPrice3
	float shippingMethodPrice4
	float shippingMethodPrice5
	float shippingMethodPrice6
	float shippingMethodPrice7
	float shippingMethodPrice8
	
	/**
	 * 1: Thumbnails of product
	 * 2: Other products related to this product
	 * 3: Product Color
	 */
	static hasMany = [images: ImageStore, productRelated: Product]
	
	Date dateAdded = new Date()
	
	//TODO: need to edit
    static constraints = {
		productImage nullable : true
		supplier nullable : true
		category nullable : true
		unit nullable:true
		itemUnit nullable:true
		//inventory nullable: false
		productColors : nullable: false
		
		shippingMethod1 nullable: true
		shippingMethod2 nullable: true
		shippingMethod3 nullable: true
		shippingMethod4 nullable: true
		shippingMethod5 nullable: true
		shippingMethod6 nullable: true
		shippingMethod7 nullable: true
		shippingMethod8 nullable: true
		
		shippingMethodPrice1 nullable:true
		shippingMethodPrice2 nullable:true
		shippingMethodPrice3 nullable:true
		shippingMethodPrice4 nullable:true
		shippingMethodPrice5 nullable:true
		shippingMethodPrice6 nullable:true
		shippingMethodPrice7 nullable:true
		shippingMethodPrice8 nullable:true
    }

}
