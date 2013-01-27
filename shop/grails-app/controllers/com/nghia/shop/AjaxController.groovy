package com.nghia.shop

class AjaxController {
	def productService
	
	def buyerEditProduct = {
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
				ProductExtend inventory
				if (params.colorVal && params.sizeVal) {
					inventory = productService.productInventory(params.colorVal, params.sizeVal , productInstance)
				}
				
				// return customer selected quantity
				def selectedQuantity = 1
				if (inventory) {
					if (params.selectedQuantity?.matches("\\d{1,12}")) {
						if (inventory.inventory >= params.selectedQuantity) {
							selectedQuantity = params.int("selectedQuantity")
						}
					}
				}
				
				def sizeOfProd = productService.sizesOfProduct(productInstance,params.colorVal, params.sizeVal, params.act)
				def productColors = productService.colorsOfProduct(productInstance, params.colorVal, params.sizeVal, params.act)
				
				render( template : "/product/product_detail_header", model: [productInstance: productInstance,
					sizeOfProd : sizeOfProd,
					productColors: productColors,
					inventory: inventory,
					selectedQuantity: selectedQuantity,
					isAjaxColor: true])
			}
		}
		else {
			//render blank page, because it's calling via ajax ???
		}
	}
}
