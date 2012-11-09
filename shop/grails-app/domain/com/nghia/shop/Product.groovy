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
	
	//User supplier
	//Category category
	/**
	 * Price
	 */
	float purchargePrice
	float importPrice // root price
	int discount = 0
	int discount3Item = 0
	int discount5Item = 0
	int discount10Item = 0
	
	// "set", "piece", "lot" ... all value will be Message Key
	String prodcutKind 
	
	ImageStore productImage
	
	/**
	 * 1: Thumbnails of product
	 * 2: Other products related to this product
	 */
	static hasMany = [images: ImageStore, productRelated: Product]
	
	Date dateAdded = new Date()
	
	//TODO: need to edit
    static constraints = {
		productImage nullable : true
		supplier nullable : true
		category nullable : true
		prodcutKind nullable:true
    }
}
