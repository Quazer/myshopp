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
				inventory = productInventory(params.productColor?.trim, params.productSize?.trim, productInstance)
			}
			
			
			[productInstance: productInstance, 
				sizeOfProd : sizesOfProduct(productInstance, null), 
				productColors: colorsOfProduct(productInstance, null), 
				inventory: inventory]
		}
		else {
			//TODO: set error to flash
			//change redirect to where????
			redirect(action: "list")
			return

		}

    }

	def sizesOfProduct(productInstance,productSizeStr) {
		def	sizesOfProd = ProductExtend.executeQuery("from ProductExtend where product = :productInstance",
				[productInstance: productInstance])

		if (productSizeStr) {
			sizesOfProd?.each {
				if(it.productSize == productSizeStr) {
					it.isSelected = true
				}
			}
		}
		
		sizesOfProd  
	}
	
	def colorsOfProduct(productInstance,productColorStr) {
		def productColor 
		if (productColorStr) {
			productColor = ProductExtend.executeQuery("from ProductExtend where product = :productInstance and productColor = :productColor",
				[productInstance: productInstance, productColor : productColorStr])
		}
		else {
			productColor = ProductExtend.executeQuery("from ProductExtend where product = :productInstance",
				[productInstance: productInstance])
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
		def inventory = ProductExtend.executeQuery(
			"select inventory from ProductExtend where product = :productInstance and productColor = :productColor and productSize = :productSize",
			[productInstance: productInstance, productColor: productColor , productSize : productSize])
		
		inventory
	}
	
	def ajaxBuyerEditProduct = {
		if (params?.sku?.matches("\\d{1,12}")) {
			def productInstance = Product.findBySku(params?.sku)
			if (!productInstance) {
				//TODO: set error to flash
				// change redirect to where????
				//render blank page, because it's calling via ajax???
				redirect(action: "list")
				return
			}
			else {
				// Select product COLOR
				def inventory
				if (params.colorVal && params.sizeVal) {
					inventory = productInventory(params.colorVal, params.sizeVal , productInstance)
				}
				
				render( template : "product_detail_header", model: [productInstance: productInstance,
					sizeOfProd : sizesOfProduct(productInstance, params.sizeVal),
					productColors: colorsOfProduct(productInstance, params.colorVal),
					inventory: inventory])
			}
		}
		else {
			//render blank page, because it's calling via ajax ???
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
