package com.nghia.shop

class ProductService {

	static transactional = true
	
	//TODO: need to remove this method????
    def autoCreate(supplier1, cat1) {
		for (int i = 0; i<= 20; i++) {
			def prod = new Product(name : "product " + i, overview: "overview of " + i,
				specification : "specification of " + i)
			prod.save(flush:true)
			
			print Product.count()
		}
    }
}
