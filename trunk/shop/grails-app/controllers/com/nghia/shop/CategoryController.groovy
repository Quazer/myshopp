package com.nghia.shop

import org.springframework.dao.DataIntegrityViolationException

class CategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
		redirect(action: "show", params: params)
//		CommonUtils.validSearchParams(params)
//		
//        //redirect(action: "list", params: params)
//		Category categoryInstance = Category.get(params?.id)
//        if (!categoryInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params?.id])
//            //redirect(action: "list")
//            return
//        }
//			
//			
//		def productTotalCount = categoryInstance?.products?.size()
//		[categoryInstance: categoryInstance, productTotalCount : productTotalCount]
    }

//    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [categoryInstanceList: Category.list(params), categoryInstanceTotal: Category.count()]
//    }
//
//    def create() {
//        [categoryInstance: new Category(params)]
//    }
//
//    def save() {
//        def categoryInstance = new Category(params)
//        if (!categoryInstance.save(flush: true)) {
//            render(view: "create", model: [categoryInstance: categoryInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.created.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
//        redirect(action: "show", id: categoryInstance.id)
//    }

    def show(Long id) {
		Category categoryInstance = Category.get(params?.id)
		if (!categoryInstance) {
			//TODO : nedd to modify
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params?.id])
			//redirect(action: "list")
			return
		}
		
		// trim strings in params
		params.properties = CommonUtils.trimStringsInParams(params, null)
		
		def paramsForPaging = [:]
		
		def totalRecCount = 0
		
		def listSortBy = ['id','purchargePrice','dateAdded']
		
		// get Price arrange
		float maxPrice = 999999999.00
		float minPrice = 0.00
		
		if (params.maxPrice?.matches("\\d{1,12}")) {
			maxPrice = Float.parseFloat(params.maxPrice.toString()) 
		}
		if (params.minPrice?.matches("\\d{1,12}")) {
			minPrice = Float.parseFloat(params.minPrice.toString())
		}
		
		if (minPrice > 0.00 && maxPrice < minPrice) {
			maxPrice = 999999999.00
		}
		
		// get Quantity arrange
		def maxQuantity = 999999999
		def minQuantity = 1
		if (params.maxQuantity?.matches("\\d{1,12}")) {
			maxQuantity = params.int("maxQuantity") 
		}
		if (params.minQuantity?.matches("\\d{1,12}")) {
			minQuantity = params.int("minQuantity")
		}
		
		if (minQuantity > 0 && maxQuantity < minQuantity) {
			maxQuantity = 999999999
		}
		
		// default sorting is Newest product
		def sortedByColumn = "dateAdded"
		def orderBy = "desc"
		if (params.sortBy == "price") {
			sortedByColumn = "purchargePrice"
		}
		if (params.orderby == "asc") {
			orderBy = "asc"
		}
		
		params.order = orderBy
		params.sort = sortedByColumn
		
		def productList
		
		if (params.SearchText && !''.equals(params.SearchText.toString())) {
			//paramsForPaging['SearchText'] = params.SearchText.toString()
			def pattern = '%'+ CommonUtils.convertSpecialCharactersForSearch(params.SearchText) + '%'
			
			totalRecCount = Product.createCriteria().count {
				ilike("name", pattern)
				eq("category.id", categoryInstance.id)
				between('purchargePrice', minPrice, maxPrice)
				//between('inventory', minQuantity, maxQuantity)
			}
			
			params.properties = CommonUtils.validateParamsForPaging(params, params.gotoPage, totalRecCount, 10, 100, listSortBy)

			productList = Product.createCriteria().list(params) {
				ilike("name", pattern)
				eq("category.id", categoryInstance.id)
				between('purchargePrice', minPrice, maxPrice)
				//between('inventory', minQuantity, maxQuantity)
			}
		} else {

			totalRecCount = Product.createCriteria().count {
				eq("category.id", categoryInstance.id)
				between('purchargePrice', minPrice, maxPrice)
				//between('inventory', minQuantity, maxQuantity)
			} 

			params.properties = CommonUtils.validateParamsForPaging(params, params.gotoPage, totalRecCount, 10, 100, listSortBy)
			
			productList = Product.createCriteria().list(params) {
				eq("category.id", categoryInstance.id)
				between('purchargePrice', minPrice, maxPrice)
				//between('inventory', minQuantity, maxQuantity)
			}
		}
		
		
		//return [userProfileInstanceList: userProfileList, userProfileInstanceTotal: totalRecCount, paramsForPagingList: paramsForPaging, currentuserIdLogin: currentuserIdLogin, actived_menu:actived_menu]
		
		//CommonUtils.validSearchParams(params)
		
        //redirect(action: "list", params: params)

			
		
		//def productTotalCount = categoryInstance?.products?.size()
		[categoryName: categoryInstance?.name, categoryId: categoryInstance?.id, productTotalCount : totalRecCount, productList : productList]
        
    }

    def edit(Long id) {
        def categoryInstance = Category.get(id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "list")
            return
        }

        [categoryInstance: categoryInstance]
    }

    def update(Long id, Long version) {
        def categoryInstance = Category.get(id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (categoryInstance.version > version) {
                categoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'category.label', default: 'Category')] as Object[],
                          "Another user has updated this Category while you were editing")
                render(view: "edit", model: [categoryInstance: categoryInstance])
                return
            }
        }

        categoryInstance.properties = params

        if (!categoryInstance.save(flush: true)) {
            render(view: "edit", model: [categoryInstance: categoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
        redirect(action: "show", id: categoryInstance.id)
    }

    def delete(Long id) {
        def categoryInstance = Category.get(id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "list")
            return
        }

        try {
            categoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "show", id: id)
        }
    }
}
