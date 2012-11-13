package com.nghia.shop

import org.springframework.dao.DataIntegrityViolationException

class ShoppingCartController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST", add:"POST"]
	def springSecurityService
	
    def index() {
        //redirect(action: "list", params: params)
		redirect(action: "myCart", params: params)
    }
	
	def myCart = {
		def currentuserLogin = springSecurityService.currentUser as Member
		def cartList = ShoppingCart.findAllByMember(currentuserLogin)
		render view : "index" , model: [cartList : cartList]
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
			
			//TODO: very important !!!! -------------
			//need to check shoppingCart is existing in DB?
			//if existing, will increase quantity
			
			def shoppingCart = new ShoppingCart()
			shoppingCart.product = product
			shoppingCart.member = currentuserLogin
			shoppingCart.quantity = params?.long("quantity")
			shoppingCart.shippingMethod = ShippingMethod.get(params?.shipMethod)
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
		render view:'test'
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
