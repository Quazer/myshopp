package com.nghia.shop

class MemberService {
	static transactional = true
	
	def assignPropValue(request, params,ShippingDetail address) {
		def contactNameParam = request.getParameter("_fmo.m._0.c").toString().trim()
		def countryParam = request.getParameter("_fmo.m._0.co").toString().trim()
		def streetAddress1Param = request.getParameter("_fmo.m._0.a").toString().trim()
		def streetAddress2Param = request.getParameter("_fmo.m._0.ad").toString().trim()
		def cityParam = request.getParameter("_fmo.m._0.ci").toString().trim()
		def stateParam = request.getParameter("_fmo.m._0.p").toString().trim()
		def zipParam = request.getParameter("_fmo.m._0.z").toString().trim()
		
		def homePhoneCountryCodeParam = request.getParameter("_fmo.m._0.ph").toString().trim()
		def homePhoneCityCodeParam = request.getParameter("_fmo.m._0.pho").toString().trim()
		def homePhoneNumberParam = request.getParameter("_fmo.m._0.phon").toString().trim()
		
		def mobilePhoneNumberParam = request.getParameter("_fmo.m._0.m").toString().trim()
		
		address.name = contactNameParam
		address.country = countryParam
		address.street1 = streetAddress1Param
		address.street2 = streetAddress2Param
		address.city = cityParam
		address.state = stateParam
		address.zip = zipParam
		address.homePhone = homePhoneCountryCodeParam + "-" + homePhoneCityCodeParam + "-" + homePhoneNumberParam
		address.mobilePhone = mobilePhoneNumberParam
		
		address
	}
	
	def updateAddress(request, params) {
		def address = ShippingDetail.get(params.modifyId)
		if (! address) {
			return null
		}
		
		assignPropValue(request, params, address)
		
		//address.save(flush:save)
		
		address
	}
	
	def addNewAddress(request, params) {
		def address = new ShippingDetail()
		address = assignPropValue(request, params, address)
		
		address.save(flush:true)
		
		address
	}
}
