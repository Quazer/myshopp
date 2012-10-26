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
		
		def listSortBy = ['id']
		
		if (params.sort == null || !listSortBy.contains(params.sort)) {
			params.sort = listSortBy[0]
			params.order = "asc"
		}
		
		def productList
		
		totalRecCount = categoryInstance?.products?.size()
		productList = categoryInstance?.products?.list(params)
		
		//return [userProfileInstanceList: userProfileList, userProfileInstanceTotal: totalRecCount, paramsForPagingList: paramsForPaging, currentuserIdLogin: currentuserIdLogin, actived_menu:actived_menu]
		
		//CommonUtils.validSearchParams(params)
		
        //redirect(action: "list", params: params)

			
		
		def productTotalCount = categoryInstance?.products?.size()
		[categoryInstance: categoryInstance, productTotalCount : productTotalCount]
        
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
