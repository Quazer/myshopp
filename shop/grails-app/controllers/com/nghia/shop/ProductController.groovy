package com.nghia.shop

import org.springframework.dao.DataIntegrityViolationException

class ProductController {
	def productService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
		//TODO: need to edit
		//TODO: chu y modify lai toan bo cac controller khac 
        redirect(action: "list", params: params)
    }

//    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [productInstanceList: Product.list(params), productInstanceTotal: Product.count(), prod : Product.list()]
//    }
//
//    def create() {
//		productService.autoCreate()
//		def productList = Product.list()
//		print "productList.size():" + productList.size()
//        [productInstance: new Product(params)]
//    }
//
//    def save() {
//        def productInstance = new Product(params)
//        if (!productInstance.save(flush: true)) {
//            render(view: "create", model: [productInstance: productInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.created.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
//        redirect(action: "show", id: productInstance.id)
//    }

    def show(Long id) {
		if (params?.sku?.matches("\\d{1,12}")) {
			def productInstance = Product.findBySku(params?.sku)
			if (!productInstance) {
				//TODO: set error to flash
				// change redirect to where????
				redirect(action: "list")
				return
			}
			
			def inventory
			if (params.productColor && params.productSize) {
				inventory = productService.productInventory(params.productColor?.trim, params.productSize?.trim, productInstance)
			}
			
			
			[productInstance: productInstance, 
				sizeOfProd : productService.sizesOfProduct(productInstance, null, null, null), 
				productColors: productService.colorsOfProduct(productInstance, null, null, null), 
				inventory: inventory]
		}
		else {
			//TODO: set error to flash
			//change redirect to where????
			redirect(action: "list")
			return

		}

    }


	

	

//    def edit(Long id) {
//        def productInstance = Product.get(id)
//        if (!productInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
//            redirect(action: "list")
//            return
//        }
//
//        [productInstance: productInstance]
//    }
//
//    def update(Long id, Long version) {
//        def productInstance = Product.get(id)
//        if (!productInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
//            redirect(action: "list")
//            return
//        }
//
//        if (version != null) {
//            if (productInstance.version > version) {
//                productInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
//                          [message(code: 'product.label', default: 'Product')] as Object[],
//                          "Another user has updated this Product while you were editing")
//                render(view: "edit", model: [productInstance: productInstance])
//                return
//            }
//        }
//
//        productInstance.properties = params
//
//        if (!productInstance.save(flush: true)) {
//            render(view: "edit", model: [productInstance: productInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.updated.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
//        redirect(action: "show", id: productInstance.id)
//    }
//
//    def delete(Long id) {
//        def productInstance = Product.get(id)
//        if (!productInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
//            redirect(action: "list")
//            return
//        }
//
//        try {
//            productInstance.delete(flush: true)
//            flash.message = message(code: 'default.deleted.message', args: [message(code: 'product.label', default: 'Product'), id])
//            redirect(action: "list")
//        }
//        catch (DataIntegrityViolationException e) {
//            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'product.label', default: 'Product'), id])
//            redirect(action: "show", id: id)
//        }
//    }
}
