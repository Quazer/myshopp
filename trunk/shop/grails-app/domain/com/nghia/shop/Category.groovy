package com.nghia.shop

class Category {

	/**
	 * If this category is sub-cat, it will be set = categoryId
	 */
	def subCategory
	def name
	static hasMany = [products : Product]
    static constraints = {
    }
}
