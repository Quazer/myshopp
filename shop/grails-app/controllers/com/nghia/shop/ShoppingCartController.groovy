package com.nghia.shop

import org.springframework.dao.DataIntegrityViolationException

class ShoppingCartController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST", add:"POST", checkout: "POST", placeOrder:"POST"]
	def springSecurityService
	def memberService
	def shoppingCartService 
	
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
		//TODO: check user logged in before accessing here
		//TODO: maybe this action will be config in Spring Security
		def currentuserLogin = springSecurityService.currentUser as Member
		
		if(params?.sku?.matches("\\d{1,12}") && params?.quantity?.matches("\\d{1,12}") && params?.shipMethod?.matches("\\d{1,12}")) {
			def product = Product.findBySku(params?.sku)
			if (! product) {
				// TODO: return back to Product detail
			}
			
			def shippingMethod = ShippingMethod.get(params?.shipMethod)
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
			
			def shoppingCart = new ShoppingCart()
			shoppingCart.product = product
			shoppingCart.member = currentuserLogin
			shoppingCart.quantity = params?.long("quantity")
			shoppingCart.shippingMethodPrice = shippingMethodPrice
			
			//TODO: modify again
			// If "shippingMethodPrice = 0" , it should set as "Free shipping"
			shoppingCart.shippingMethod = shippingMethod
			shoppingCart.save(flush:true)
			
			if (shoppingCart.hasErrors()) {
				//TODO: return back to Product detail
			}
			
			
		}
		else {
			//TODO: return back to Product detail
		}
		
		redirect(action: "myCart")
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
		print "first :" + params
		// security - Authenticity Token
		//withForm {
			def placeOrderAction = "info"
			def updateAddressAction = "update"
			def createAddressAction = "save"
			def isUpdated
			def currentuserLogin = springSecurityService.currentUser as Member
			
			if (params.addressOperateFlag == placeOrderAction) {
				// TODO: place an order -> move to "check out" page
				// This process has been moved to "placeOrder" action
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
		 //}.invalidToken {
		 	//TODO: ??????
		 //}
		redirect(action: "myCart")
		return
	}
	
	def placeOrder() {
		print params
		//withForm {
		if (params.agree-disclose-email) {
			
			def productIds = params.purchaseId
			def orderStatusTracking
			if (productIds) {
				def currentuserLogin = springSecurityService.currentUser as Member
				orderStatusTracking = shoppingCartService.checkout(productIds, currentuserLogin, params)
			}
	
			if (orderStatusTracking) {
				// show the end day of Order
				def endDateOfOrder = orderStatusTracking.date + 7
				
				[orderStatusTracking : orderStatusTracking, endDateOfOrder: endDateOfOrder.time]
			}
			else {
				// TODO: need to set error to flash.message ????
				redirect(action: "myCart")
				return
			}
		}
		else {
			flash.message = "You should agree our policy."
		}
		//}.invalidToken {
		//print flash.invalidToken
			//TODO: ??????
		//}
		
		// TODO: need to set error to flash.message ????
		redirect(action: "myCart")
		return
	}
	
	def checkout2() {
		def productIds = params.purchaseId
		def shoppingCartList = new ArrayList()
		if (productIds) {
			def currentuserLogin = springSecurityService.currentUser as Member
			def tmp
			for (def productId : productIds) {
				if (productId.matches("\\d{1,12}")) {
					productId = Long.parseLong(productId)
					if (productId > 0) {
						def productInstance = Product.get(productId)
						if (productInstance) {
							ShoppingCart shoppingCart = ShoppingCart.findByProductAndMember(productInstance, currentuserLogin)
							if (shoppingCart) {
								shoppingCartList.add(shoppingCart)
							}
						}
					}
				}
			}
		}
		
		if (shoppingCartList.size > 0) {
			// show the checkout page
			[shoppingCartList : shoppingCartList]
		}
		else {
			// TODO: need to set error to flash.message
			redirect(action: "myCart")
			return
		}
		

	}
	
	/**
	 * Update product quantity in ShoppingCart
	 * @return
	 */
	def updateQuantity() {
		if (params.productId?.matches("\\d{1,12}") && params.update_quantity?.matches("\\d{1,12}") ) {
			def product = Product.get(params.productId)
			if (! product) {
				//TODO: need throw exception here??????
				redirect(action: "myCart")
				return
			}

			// if Product Inventory is limited
			int newQuantity = params.int("update_quantity")
			if (product.inventory < 9999 && newQuantity < product.inventory) {
				def currentuserLogin = springSecurityService.currentUser as Member
				ShoppingCart shoppingCart = ShoppingCart.findByProductAndMember(product, currentuserLogin)
				if (shoppingCart) {
					shoppingCart.quantity = newQuantity
				}
			}			
		}
		
		redirect(action: "myCart")
		return
	}
	
	/**
	 * Update shippingMethod in ShoppingCart
	 */
	def updateShippingMethod() {
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
