package com.nghia.shop

class BestSeller {
	Category category
	static hasMany = [product: Product]
	
    static constraints = {
		
    }
}
