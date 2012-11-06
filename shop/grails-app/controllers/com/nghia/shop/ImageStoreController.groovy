package com.nghia.shop

import org.springframework.dao.DataIntegrityViolationException

class ImageStoreController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
//
//    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [imageStoreInstanceList: ImageStore.list(params), imageStoreInstanceTotal: ImageStore.count()]
//    }
//
//    def create() {
//        [imageStoreInstance: new ImageStore(params)]
//    }
//
//    def save() {
//        def imageStoreInstance = new ImageStore(params)
//        if (!imageStoreInstance.save(flush: true)) {
//            render(view: "create", model: [imageStoreInstance: imageStoreInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.created.message', args: [message(code: 'imageStore.label', default: 'ImageStore'), imageStoreInstance.id])
//        redirect(action: "show", id: imageStoreInstance.id)
//    }
//
//    def show(Long id) {
//        def imageStoreInstance = ImageStore.get(id)
//        if (!imageStoreInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'imageStore.label', default: 'ImageStore'), id])
//            redirect(action: "list")
//            return
//        }
//
//        [imageStoreInstance: imageStoreInstance]
//    }
//
//    def edit(Long id) {
//        def imageStoreInstance = ImageStore.get(id)
//        if (!imageStoreInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'imageStore.label', default: 'ImageStore'), id])
//            redirect(action: "list")
//            return
//        }
//
//        [imageStoreInstance: imageStoreInstance]
//    }
//
//    def update(Long id, Long version) {
//        def imageStoreInstance = ImageStore.get(id)
//        if (!imageStoreInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'imageStore.label', default: 'ImageStore'), id])
//            redirect(action: "list")
//            return
//        }
//
//        if (version != null) {
//            if (imageStoreInstance.version > version) {
//                imageStoreInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
//                          [message(code: 'imageStore.label', default: 'ImageStore')] as Object[],
//                          "Another user has updated this ImageStore while you were editing")
//                render(view: "edit", model: [imageStoreInstance: imageStoreInstance])
//                return
//            }
//        }
//
//        imageStoreInstance.properties = params
//
//        if (!imageStoreInstance.save(flush: true)) {
//            render(view: "edit", model: [imageStoreInstance: imageStoreInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.updated.message', args: [message(code: 'imageStore.label', default: 'ImageStore'), imageStoreInstance.id])
//        redirect(action: "show", id: imageStoreInstance.id)
//    }
//
//    def delete(Long id) {
//        def imageStoreInstance = ImageStore.get(id)
//        if (!imageStoreInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'imageStore.label', default: 'ImageStore'), id])
//            redirect(action: "list")
//            return
//        }
//
//        try {
//            imageStoreInstance.delete(flush: true)
//            flash.message = message(code: 'default.deleted.message', args: [message(code: 'imageStore.label', default: 'ImageStore'), id])
//            redirect(action: "list")
//        }
//        catch (DataIntegrityViolationException e) {
//            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'imageStore.label', default: 'ImageStore'), id])
//            redirect(action: "show", id: id)
//        }
//    }
	
	def productImages() {
		//TODO: need to verify Id before using
		try {
			def imageStoreInstanceList = ImageStore.executeQuery("select fileName from ImageStore " +
				"where id =:imageId", [imageId: params.long("id")])
			
			if (imageStoreInstanceList) {
				
				File file = new File(imageStoreInstanceList.get(0))
				response.outputStream << file.bytes
			}
			
		}
		catch (e) {
			log.error("`Id` from parameter: " + params.id + " " + e)
		}
	}	
	
}
