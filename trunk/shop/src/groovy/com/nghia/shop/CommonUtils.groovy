/**
 * 
 */
package com.nghia.shop

import java.util.List;
import org.springframework.web.context.request.RequestContextHolder as RCH
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap;

/**
 * @author Maika
 *
 */
class CommonUtils {
	def static isNullId(params) {
		return true
	}
	
	def static validSearchParams(params) {
		//params
	}
	
	// return price of Product with currency
	// ex: $32
	def static productPrice(productInstance, quantity = null) {
		// TODO: check productInstance != null ?
		def productPrice = this.priceOfProduct(productInstance)
		
		
		// TODO:check quantity la integer or not
		//return "{US productPrice}" + productPrice
		return "{US productPrice}"
	}
	
	// return price of product WITHOUT currency
	// ex: 32
	def static priceOfProduct(Object productInstance) {
		//TODO get product price
		return "{priceOfProduct}"
	}
	
	def static subTotalPerOrder(product) {
		return "{subtotal }"
	}
	
	def static totalPerOrder(ShoppingCart orderItem) {
		return "{totalPerOrder}"
	}
	
	/**
	 * It's use to DISPLAY on the view
	 * @param cartList
	 * @return
	 */
	// arg: list of ShoppingCart
	def static totalPriceOfShopCart(cartList) {
		def price = sumPriceOfShopCart(cartList)
		
		return "{totalPriceOfShopCart}"
	}
	
	/**
	 * It's use to CALCULATION 
	 * @param cartList
	 * @return
	 */
	def static sumPriceOfShopCart(cartList) {
		def price = 0.00
		for (ShoppingCart shopItem : cartList) {
			if (shopItem.product) {
				price += shopItem.product?.purchargePrice
			}
		}
		
		
		// TODO: add coupon + shippingCost
		return price
	}
	
	def static isFreeShipping(productInstance) {
		return true
	}
	
	/**
	* Trim strings in params (can be used before save or update).
	* Space(s) in start and end of string will be trimmed. In addition, if strings in params have more than one space between 2 words, they will be trimmed to have only one space between 2 words.
	* @param GrailsParameterMap params
	* @return GrailsParameterMap
	*/
    static trimStringsInParams(GrailsParameterMap params, List<String> ignoredKeyList){

	   String trimmedString = ""

	   if (ignoredKeyList == null || ignoredKeyList.size() == 0){

		   params.each { key, value ->

			   if (value != null && value instanceof String){

				   trimmedString = value.toString().trim().replaceAll(/\s\s+/, ' ')

				   if(!value.equals(trimmedString)){
					   params.put(key, trimmedString) // replace by trimmed value
				   }
			   }
		   }

	   } else {

		   params.each { key, value ->

			   if (!ignoredKeyList.contains(key) && value != null && value instanceof String){

				   trimmedString = value.toString().trim().replaceAll(/\s\s+/, ' ')

				   if(!value.equals(trimmedString)){
					   params.put(key, trimmedString) // replace by trimmed value
				   }
			   }
		   }
	   }
	   return params
    }
   
    /***
    * load all page attributes from session
    */
	  static GrailsParameterMap loadParamsFromSession(session, form, params) {
		  def rs = session.getAttribute(form)
		  
		  if(rs == null)
			  return params
		  
		  if (rs.max && !params.max)
			  params.max = rs.max
		  
		  if (rs.offset && !params.offset)
			  params.offset = rs.offset
			  
		  if (rs.sort && !params.sort)
			  params.sort = rs.sort
			  
		  if (rs.order && !params.order)
			  params.order = rs.order
		  
		  if (rs.CS_status && !params.CS_status)
			  params.CS_status = rs.CS_status
		  
		  if (rs.pattern && !params.pattern && !params.Search)
			  params.pattern = rs.pattern
		  
		  if (rs.CS_pick && !params.CS_pick)
			  params.CS_pick = rs.CS_pick
			  
		  if (rs.useractive && !params.useractive)
			  params.useractive = rs.useractive
		  
		  //don't load params when doing new search
		  if (!params.Search) {
			  if (rs.studyId && !params.studyId)
				  params.studyId = rs.studyId
				  
			  if (rs.visitTypeName && !params.visitTypeName)
				  params.visitTypeName = rs.visitTypeName
			  
			  if (rs.imageTypeName && !params.imageTypeName)
				  params.imageTypeName = rs.imageTypeName
				  
			  if (rs.technicianUserName && !params.technicianUserName)
				  params.technicianUserName = rs.technicianUserName
			  
			  if (rs.caseId && !params.caseId)
				  params.caseId = rs.caseId
				  
			  if (rs.patientId && !params.patientId)
				  params.patientId = rs.patientId
				  
			  if (rs.certId && !params.certId)
				  params.certId = rs.certId
				  
			  if (rs.txtVisitDateFrom && !params.txtVisitDateFrom)
				  params.txtVisitDateFrom = rs.txtVisitDateFrom
			  if (rs.txtVisitDateTo && !params.txtVisitDateTo)
				  params.txtVisitDateTo = rs.txtVisitDateTo
				  
			  if (rs.txtSubDateFrom && !params.txtSubDateFrom)
				  params.txtSubDateFrom = rs.txtSubDateFrom
			  if (rs.txtSubDateTo && !params.txtSubDateTo)
				  params.txtSubDateTo = rs.txtSubDateTo
				  
			  if (rs.txtAssignDateFrom && !params.txtAssignDateFrom)
				  params.txtAssignDateFrom = rs.txtAssignDateFrom
			  
			  if (rs.txtAssignDateTo && !params.txtAssignDateTo)
				  params.txtAssignDateTo = rs.txtAssignDateTo
		  }
			  
		  return params
	  }
  

	 static String convertSpecialCharactersForSearch(String pattern){
		 if (pattern != null) {
			 return pattern.replace("\\", "\\\\")
			 .replace("_", "\\_")
			 .replace("%", "\\%")
		 } else return null
	 }
	 
	 static validateParamsForPaging(GrailsParameterMap params, Object gotoPage, long totalRecordCount, long recordNumberPerPage = 10, long maxRecordNumberPerPage = 100, List<String> listSortBy){
		 
				 def rs = params
				 def max = rs.max // input by user
				 def offset = rs.offset // input by user
				 def gotoPg
				 def sortBy = rs.sort // input by user
				 def orderBy = rs.order // input by user
		 
				 // validate for rs.max
				 if (max == null) {
					 rs.max = recordNumberPerPage
		 
				 } else {
					 try {
		 
						 rs.max = max.toString().toInteger()
						 if (rs.max <= 0) {
							 rs.max = recordNumberPerPage // set default record number per page
						 } else {
							 rs.max = Math.min(rs.max, maxRecordNumberPerPage)
						 }
		 
					 } catch (NumberFormatException e) {
						 rs.max = recordNumberPerPage // set default record number per page
					 }
				 }
		 
				 // validate for rs.offset
				 if (offset == null) {
					 rs.offset = 0
				 } else {
					 try {
		 
						 rs.offset = offset.toString().toInteger()
		 
						 if (rs.offset < 0){
							 rs.offset = 0
						 }
		 
						 // in case input offset greater maximum offset
						 else if (rs.offset >= totalRecordCount) {
							 rs.offset = Math.floor((totalRecordCount-1) / rs.max) * rs.max
						 }
						 else if (rs.offset % rs.max != 0) {
							 rs.offset = Math.floor(rs.offset / rs.max) * rs.max
						 }
		 
					 } catch (NumberFormatException e) {
						 rs.offset = 0
					 }
				 }
		 
				 // validate for gotoPage and then return rs.offset (with rs.max gets value default by recordNumberPerPage)
				 if (gotoPage != null){
					 try {
		 
						 gotoPg = gotoPage.toString().toLong() // input by user
		 
						 def maxPage
		 
						 if (totalRecordCount % rs.max > 0) {
							 maxPage = Math.floor(totalRecordCount / rs.max) + 1
						 } else {
							 maxPage = totalRecordCount / rs.max
						 }
		 
						 if (gotoPg <= 0 ) {
							 rs.offset = 0 // go to page 1
		 
						 } else if(gotoPg >= 1 && gotoPg <= maxPage) {
							 rs.offset = (gotoPg - 1) * rs.max
						 } else {
							 rs.offset = Math.floor((totalRecordCount-1) / rs.max) * rs.max
						 }
		 
					 } catch (NumberFormatException e) {
						 rs.offset = 0 // go to page 1
					 }
				 }
		 
				 // validate for sort and order
				 if (listSortBy != null) {
					 if (sortBy != null){
		 
						 if (orderBy != null && !"asc".equals(orderBy.toString().toLowerCase()) && !"desc".equals(orderBy.toString().toLowerCase())) {
							 rs.sort = null
							 rs.order = null
		 
						 } else {
							 if (!listSortBy.contains(sortBy)){
								 rs.sort = null
								 rs.order = null
							 }
						 }
					 }
				 }
		 
				 params = rs
				 return params
			 }
	 
	 static otherProducts(productId) {
		 // TODO: need to verify productInstance!=null before using
		 Product.list()
	 }
	 
	 static shippingMethodPrice(price) {
		 //TODO: need to verify
		 price
	 }
	 
	 static shippingMethodTimeOfDeliver(timeOfDeliver) {
		 timeOfDeliver
	 }
	 
	 static shippingMethodTimeOfVerify(timeOfVerify) {
		 timeOfVerify
	 }
	 
	 /**
	 * Copying object's properties
	 * @param source
	 * @param target
	 * @return
	 */
	 static copyProperties(def source){
		def result = source.getClass().newInstance()
		result.properties = source.properties
		result
	 }
	 
	 /**
	  * Auto generate OrderNumber
	  * @param shoppingCart
	  * @return
	  */
	 static generateOrderNumber(ShoppingCart shoppingCart) {
		 // TODO: need to get value of "product", "member" to generate unique number
		 // TODO: it's just suggestion
		 
		 // TODO: or use "datetime" create of shoppingCart to generate unique number
		 Random ran = new Random();
		 int x = ran.nextInt(999999) + 5;
		 x
	 }
	 
	 static discountOrCoupon(ShoppingCart shoppingCart) {
		 return "{discountOrCoupon}"
	 }
}
