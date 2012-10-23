package com.nghia.shop

class SuperCategory {
	static hasMany = [categories : Category]
	def name
    static constraints = {
    }
}
