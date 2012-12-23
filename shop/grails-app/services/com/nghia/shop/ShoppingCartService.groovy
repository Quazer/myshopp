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
	
	/**
	 * Add product to ShoppingCart
	 * @return
	 */
	def addShoppingCart(Product product, currentuserLogin, params) {
		def shippingMethod = ShippingMethod.findByName(params?.shipMethod)
		def shippingMethodPrice = 0
		def tmp
		def methodName
		def price
		for (int i = 1; i <= 8; i++) {
			methodName = "shippingMethod" + i
			tmp = product."${methodName}"
			if (shippingMethod == tmp) {
				price = "shippingMethodPrice" + i
				shippingMethodPrice = product."${price}"
				break
			}
		}
		
		
		//TODO: very important !!!! -------------
		//need to check shoppingCart is existing in DB?
		//if existing, will increase quantity
		
		//TODO: hien tai chua the copy duoc properties
		//TODO: can phai chuyen sang dung productOrdered cho ShoppingCart
		// Luu product vao gio hang
//		def productOrdered = new ProductOrdered()
//		productOrdered.properties = product.properties
//		productOrdered.save(flush:true)
		
//		if (productOrdered.hasErrors()) {
//			return null
//		}
		def productColorParam = params.productColor
		def productSizeParam = params.productSize
		
		// Get productExtend to get product color/size
//		def productExtendList = ProductExtend.executeQuery(
//			"from ProductExtend where product = :productInstance and productColor = :productColor and productSize = :productSize",
//			[productInstance: product, productColor: productColorParam , productSize : productSizeParam])
//		def productExtend
//		if (productExtendList?.size > 0) {
//			productExtend = productExtend.get(0)
//		}
		
		def shoppingCart = new ShoppingCart()
		shoppingCart.product = product
		//shoppingCart.productExtend = productExtend
		shoppingCart.member = currentuserLogin
		shoppingCart.quantity = params?.long("quantity")
		shoppingCart.shippingMethodPrice = shippingMethodPrice
		
		//TODO: modify again
		// If "shippingMethodPrice = 0" , it should set as "Free shipping"
		shoppingCart.shippingMethod = shippingMethod
		shoppingCart.save(flush:true)
		
		shoppingCart
	}
}
