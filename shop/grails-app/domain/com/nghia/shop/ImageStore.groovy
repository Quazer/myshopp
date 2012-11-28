package com.nghia.shop

class ImageStore {

	String fileName
	String filePath
	String thumbnailPath
	
	// It's used for detect what image (color) is chosen by Buyer (at Product detail page)
	transient isSelected = false
	
	boolean isExternal = false
	
    static constraints = {
    }
}
