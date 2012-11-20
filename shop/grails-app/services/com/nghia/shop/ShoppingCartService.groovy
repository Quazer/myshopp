package com.nghia.shop

class ShoppingCartService {
	static transactional = true
	
	def checkout(productIds, currentuserLogin, params) {
		def error
		def tmp
		def shoppingCartList = new ArrayList()
		for (def productId : productIds) {
			if (productId.matches("\\d{1,12}")) {
				productId = Long.parseLong(productId)
				if (productId > 0) {
					tmp = "messageToShop-" + productId
					if (params."${tmp}"?.trim()) {
						def productInstance = Product.get(productId)
						if (productInstance) {
							ShoppingCart shoppingCart = ShoppingCart.findByProductAndMember(productInstance, currentuserLogin)
							if (shoppingCart && !error &&shoppingCart.isCheckout == false) {
								shoppingCart.messageToShop = params."${tmp}".trim()
								shoppingCart.isConfirmed = true
								shoppingCart.orderNumber = CommonUtils.generateOrderNumber(shoppingCart)
								if (shoppingCart.hasErrors()) {
									error = true
									break
								}
								else {
									shoppingCartList.add(shoppingCart)
								}
							}
						}
					}
				}
			}
		}
		
		if (!error && shoppingCartList.size > 0) {
			def orderStatusTracking = new OrderStatusTracking()
			orderStatusTracking.status = 3
			
			for (def shoppingItem : shoppingCartList) {
				orderStatusTracking.addToShoppingCart(shoppingItem)
			}
			
			orderStatusTracking.save(flush:true)
			
			if (orderStatusTracking.hasErrors()) {
				return null	
			}
			
			return orderStatusTracking.id
			
		}
		else {
			return null
		}
	}
}
