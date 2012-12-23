package com.nghia.shop

import org.springframework.dao.DataIntegrityViolationException

class ShoppingCartController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST", add:"POST", placeOrder:"POST"]
	def springSecurityService
	def memberService
	def shoppingCartService 
	def productService
	
    def index() {
        //redirect(action: "list", params: params)
		redirect(action: "myCart", params: params)
    }
	
	def myCart = {
		
		def currentuserLogin = springSecurityService.currentUser as Member
		def cartList = ShoppingCart.findAllByMemberAndIsConfirmed(currentuserLogin, false)
		render view : "mycart" , model: [cartList : cartList, currentuserLogin: currentuserLogin]
	}

	def add() {
		//withForm {
			//TODO: check user logged in before accessing here
			//TODO: maybe this action will be config in Spring Security
			def currentuserLogin = springSecurityService.currentUser as Member
			
			if(params?.objectId?.matches("\\d{1,12}") && params?.quantity?.matches("\\d{1,12}")) {
				def product = Product.findBySku(params?.objectId)
				if (! product) {
					// TODO: return back to Product detail
				}
				
				// Kiem tra kho hang
				def productColorParam = params.productColor
				def productSizeParam = params.productSize
				ProductExtend productExtend = productService.productInventory(productColorParam, productSizeParam, product) 
				def inventory = productExtend == null ? 0 : productExtend.inventory
				
				// Truong hop con hang
				if (inventory > 0 && inventory >= params?.int("quantity")) {
					ShoppingCart shoppingCart = shoppingCartService.addShoppingCart(product, currentuserLogin, params)
					if (shoppingCart.hasErrors()) {
						print "error"
					}
					else {
						shoppingCart.productExtend = productExtend
						shoppingCart.save(flush:true)
						print "shoppingCart: " + shoppingCart.id
					}
				}
				
			}
			else {
				//TODO: return back to Product detail
			}
			
			redirect(action: "myCart")
		//}.invalidToken {
			// bad request
			//redirect(controller: "product", action: "show", sku: params?.sku)
		//}

	}
	
	def iframe_proxy = {
		render view:'mycart'
	}

	/**
	 * Action called when submit form at "Confirm order" step in "Shopping cart"
	 * It has 3 actions here:
	 * - Edit address
	 * - Add new address
	 * - Place an order	
	 */
	def actionConfirmOrder() {
		// security - Authenticity Token
		withForm {
			def placeOrderAction = "info"
			def updateAddressAction = "update"
			def createAddressAction = "save"
			def isUpdated
			def currentuserLogin = springSecurityService.currentUser as Member
			
			// Thay doi main address
			if (params.addressOperateFlag == placeOrderAction && params.addressId?.matches("\\d{1,12}")) {
				def addressId = Long.parseLong(params.addressId)
				def tmpAddress
				boolean isChanged
				if (addressId != currentuserLogin.shippingDetail.id) {
					def shippingAddressList = currentuserLogin.shippingAddress
					for (ShippingDetail shippingAddress : shippingAddressList) {
						if (shippingAddress.id == addressId) {
							tmpAddress = currentuserLogin.shippingDetail
							
							currentuserLogin.shippingDetail = shippingAddress
							
							currentuserLogin.shippingAddress.remove(shippingAddress)
							
							isChanged = true
							break
						}
					}
					
					if (isChanged) {
						currentuserLogin.shippingAddress.add(tmpAddress)
					}
					
					
				}
				
				
			}
			else if ((params.addressOperateFlag == updateAddressAction || params.addressOperateFlag == createAddressAction)) {
					
				ShippingDetail address
				// Update User address
				if (params.addressOperateFlag == updateAddressAction && params.modifyId?.matches("\\d{1,12}")) {		// Modify address
					
					address = memberService.updateAddress(request, params)
					if (! address) {
						//TODO: set error msg to flash
						flash.message = "This address is not existed"
						
						redirect(action: "myCart")
						return
					}
					isUpdated = true
				}
				// Add new address
				else if (params.addressOperateFlag == createAddressAction) { // Add new address
					if (currentuserLogin.shippingAddress.size() == 8) {
						
						//TODO: set error msg to flash: "limited 8 address only"
						flash.message = "limited 8 address only"
						redirect(action: "myCart")
						return
					}
					address = memberService.addNewAddress(request, params)
				}
				else {
					redirect(action: "myCart")
					return
				}

				// Change main address of user if add new address
				if (!address?.hasErrors()) {
					
					def mainAddress = currentuserLogin.shippingDetail
					
					if (isUpdated) {
						if (currentuserLogin.shippingDetail.id != address.id) {
							currentuserLogin.shippingAddress.remove(address)
							currentuserLogin.shippingAddress.add(mainAddress)
							
							currentuserLogin.shippingDetail = address
						}
					}
					else {
						currentuserLogin.shippingDetail = address
						currentuserLogin.shippingAddress.add(mainAddress)
					}

					
				}				

				//TODO: need to showing error when "address.hasErrors()" ????
				
			}
			else {
			}
		 }.invalidToken {
		 	//TODO: ??????
		 }
		redirect(action: "myCart")
		return
	}
	
	def placeOrder() {
		withForm {
			def productIds = params.purchaseId
			def idOrderTracking
			if (productIds) {
				def currentuserLogin = springSecurityService.currentUser as Member
				idOrderTracking = shoppingCartService.checkout(productIds, currentuserLogin, params)
			}
	
			if (idOrderTracking) {
				// show the end day of Order
				//def endDateOfOrder = orderStatusTracking.date + 7
				//session.orderTrackingNumberFromCheckout = idOrderTracking 
				//redirect(action: "checkout")
				//return
				//[orderStatusTracking : orderStatusTracking, endDateOfOrder: endDateOfOrder.time]
				[orderStatusTracking: idOrderTracking]
			}
			else {
				// TODO: need to set error to flash.message ????
				redirect(action: "myCart")
				return
			}
	    }.invalidToken {
			redirect(action: "myCart")
			return
		// bad request
	    }

		//}.invalidToken {
		//print flash.invalidToken
			//TODO: ??????
		//}

	}
	
	def checkout() {
		if (params.orderStatusTracking?.matches("\\d{1,12}")) {
			def orderStatusTrackingNumber = params.orderStatusTracking
			def orderStatusTracking = OrderStatusTracking.get(orderStatusTrackingNumber)
			def currentDate = new Date()
			if (orderStatusTracking && (orderStatusTracking?.date + 7 >= currentDate)) {
				[orderStatusTracking : orderStatusTracking, endDateOfOrder: orderStatusTracking.date.time]
			}
			else {
				// TODO:  need to set error to flash.message
				redirect(action: "myCart")
				return
			}
		}
	}
	
//	def checkout() {
//		def productIds = params.purchaseId
//		def shoppingCartList = new ArrayList()
//		if (productIds) {
//			def currentuserLogin = springSecurityService.currentUser as Member
//			def tmp
//			for (def productId : productIds) {
//				if (productId.matches("\\d{1,12}")) {
//					productId = Long.parseLong(productId)
//					if (productId > 0) {
//						def productInstance = Product.get(productId)
//						if (productInstance) {
//							ShoppingCart shoppingCart = ShoppingCart.findByProductAndMember(productInstance, currentuserLogin)
//							if (shoppingCart) {
//								shoppingCartList.add(shoppingCart)
//							}
//						}
//					}
//				}
//			}
//		}
//		
//		if (shoppingCartList.size > 0) {
//			// show the checkout page
//			[shoppingCartList : shoppingCartList]
//		}
//		else {
//			// TODO: need to set error to flash.message
//			redirect(action: "myCart")
//			return
//		}
//		
//
//	}
	
	/**
	 * Update product quantity in ShoppingCart
	 * @return
	 */
	def updateQuantity() {
		print params
		withForm {
			if (params.productId?.matches("\\d{1,12}") && params.update_quantity?.matches("\\d{1,12}") && params.shopcartId?.matches("\\d{1,12}") ) {
				ShoppingCart shoppingCart = ShoppingCart.get(params.shopcartId)
				if (shoppingCart) {
					def productExtend = shoppingCart.productExtend
					def inventory = productExtend?.inventory
					int newQuantity = params.int("update_quantity")
					// Con hang
					if (inventory < 9999 && inventory >= newQuantity) {
						shoppingCart.quantity = newQuantity
						shoppingCart.save(flush:true)
					}
				}
//				def product = Product.get(params.productId)
//				if (! product) {
//					//TODO: need throw exception here??????
//					redirect(action: "myCart")
//					return
//				}
//	
//				// if Product Inventory is limited
//				int newQuantity = params.int("update_quantity")
//				if (product.inventory < 9999 && newQuantity < product.inventory) {
//					def currentuserLogin = springSecurityService.currentUser as Member
//					ShoppingCart shoppingCart = ShoppingCart.findByProductAndMember(product, currentuserLogin)
//					if (shoppingCart) {
//						shoppingCart.quantity = newQuantity
//					}
//				}			
			}
		}.invalidToken {
		//TODO: ??????
		}
		redirect(action: "myCart")
		return
	}
	
	/**
	 * Update shippingMethod in ShoppingCart
	 */
	def updateShippingMethod() {
		withForm {
			def productIdParam = request.getParameter("product-id")
			if (productIdParam?.matches("\\d{1,12}") && params.serviceName) {
				
				// get shippingMethod selected
				def shippingMethod = ShippingMethod.findByName(params.serviceName.trim())
				def product = Product.get(productIdParam)
				
				if (shippingMethod && product) {
					def currentuserLogin = springSecurityService.currentUser as Member
					ShoppingCart shoppingCart = ShoppingCart.findByProductAndMember(product, currentuserLogin)
					if (shoppingCart) {
						// update shippingMethod selected to ShoppingCart
						shoppingCart.shippingMethod = shippingMethod
					}
				}
			}
	
			redirect(action: "myCart")
			return
		}.invalidToken {
		   // bad request
		}
		
	}
//    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [shoppingCartInstanceList: ShoppingCart.list(params), shoppingCartInstanceTotal: ShoppingCart.count()]
//    }
//
//    def create() {
//        [shoppingCartInstance: new ShoppingCart(params)]
//    }
//
//    def save() {
//        def shoppingCartInstance = new ShoppingCart(params)
//        if (!shoppingCartInstance.save(flush: true)) {
//            render(view: "create", model: [shoppingCartInstance: shoppingCartInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.created.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), shoppingCartInstance.id])
//        redirect(action: "show", id: shoppingCartInstance.id)
//    }
//
//    def show(Long id) {
//        def shoppingCartInstance = ShoppingCart.get(id)
//        if (!shoppingCartInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), id])
//            redirect(action: "list")
//            return
//        }
//
//        [shoppingCartInstance: shoppingCartInstance]
//    }
//
//    def edit(Long id) {
//        def shoppingCartInstance = ShoppingCart.get(id)
//        if (!shoppingCartInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), id])
//            redirect(action: "list")
//            return
//        }
//
//        [shoppingCartInstance: shoppingCartInstance]
//    }
//
//    def update(Long id, Long version) {
//        def shoppingCartInstance = ShoppingCart.get(id)
//        if (!shoppingCartInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), id])
//            redirect(action: "list")
//            return
//        }
//
//        if (version != null) {
//            if (shoppingCartInstance.version > version) {
//                shoppingCartInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
//                          [message(code: 'shoppingCart.label', default: 'ShoppingCart')] as Object[],
//                          "Another user has updated this ShoppingCart while you were editing")
//                render(view: "edit", model: [shoppingCartInstance: shoppingCartInstance])
//                return
//            }
//        }
//
//        shoppingCartInstance.properties = params
//
//        if (!shoppingCartInstance.save(flush: true)) {
//            render(view: "edit", model: [shoppingCartInstance: shoppingCartInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.updated.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), shoppingCartInstance.id])
//        redirect(action: "show", id: shoppingCartInstance.id)
//    }
//
//    def delete(Long id) {
//        def shoppingCartInstance = ShoppingCart.get(id)
//        if (!shoppingCartInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), id])
//            redirect(action: "list")
//            return
//        }
//
//        try {
//            shoppingCartInstance.delete(flush: true)
//            flash.message = message(code: 'default.deleted.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), id])
//            redirect(action: "list")
//        }
//        catch (DataIntegrityViolationException e) {
//            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), id])
//            redirect(action: "show", id: id)
//        }
//    }
}
