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
	
	/**
	 * get sizesOfProduct
	 * @param productInstance
	 * @param productColorStr
	 * @param productSizeStr
	 * @return
	 */
	def sizesOfProduct(productInstance,productColorStr, productSizeStr, action) {
		def	sizesOfProd = ProductExtend.executeQuery("from ProductExtend where product = :productInstance and productSize <> ''",
				[productInstance: productInstance])
		
		def isSelected
		if (productSizeStr) {
			sizesOfProd?.each {

//				if (action == "size") {
//					// Truong hop Buyer click "Size"
//					if (it.productColor != productColorStr) {
//						// disable color
//						it.enableColor4Buyer = false
//					}
//
//				}
//				else {
//					
//				}
				
				
				if(it.productSize == productSizeStr) {
					it.isSizeSelected = true
				}
			}
		}
		
		sizesOfProd
	}
	
	/**
	 * get colorsOfProduct
	 * @param productInstance
	 * @param productColorStr
	 * @param productSizeStr
	 * @return
	 */
	def colorsOfProduct(productInstance,productColorStr, productSizeStr, action) {
		def productColor = ProductExtend.executeQuery("from ProductExtend where product = :productInstance",
				[productInstance: productInstance])
		
		if (productColorStr) {
			productColor?.each {
//				if (action == "color") {
//
//					
//					// Truong hop Buyer click "Size"
//				
//					if (it.productSize != productSizeStr) {
//						// disable cac color
//						it.enableSize4Buyer = false
//					}
//				}
				
				if(it.productColor == productColorStr) {
					it.isColorSelected = true
				}
			}
		}
		productColor
	}
	
	/**
	 * Get product Inventory
	 * @param params
	 * @param productInstance
	 * @return
	 */
	def productInventory(productColor, productSize, productInstance) {
		def productExtendList = ProductExtend.executeQuery(
			"from ProductExtend where product = :productInstance and productColor = :productColor",
			[productInstance: productInstance, productColor: productColor])
		
		if (productExtendList.size() == 0) {
			return null
		}
		else {
			return productExtendList.get(0)
		}
	}
}
