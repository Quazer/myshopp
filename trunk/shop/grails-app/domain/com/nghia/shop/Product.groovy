package com.nghia.shop

class Product {

	/**
	 * Product will be sold by the supplier
	 */
	//static belongsTo = [supplier : User, category : Category]
	def SKU
	
	def name
	def overview
	def specification
	
	//User supplier
	//Category category
	/**
	 * Price
	 */
	def purchargePrice
	def importPrice // root price
	def discount
	def discount3Item
	def discount5Item
	def discount10Item
	
	/**
	 * 1: Thumbnails of product
	 * 2: Other products related to this product
	 */
	ImageStore mainImage
	static hasMany = [images: ImageStore, productRelated: Product]
	
	Date dateAdded = new Date()
	
    static constraints = {
		mainImage nullable:true
    }
}
