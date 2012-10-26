/**
 * 
 */
package com.nghia.shop

import java.util.List;

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
	
	def static productPrice(productInstance) {
		// check productInstance != null ?
		return "US" + 0
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
}
