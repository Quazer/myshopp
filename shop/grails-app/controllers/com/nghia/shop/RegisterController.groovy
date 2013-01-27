package com.nghia.shop

class RegisterController {

    def index() { }
	
	def saveUser() {
		def email = request.getParameter("_fmws.e._0.e")?.toString().trim();
		def firstName = request.getParameter("_fmws.e._0.f")?.toString().trim();
		def lastName = request.getParameter("_fmws.e._0.l")?.toString().trim();
		def password = request.getParameter("_fmws.e._0.p")?.toString().trim();

		boolean errorFlg = false;	
		EmailValidator emailValidator = new EmailValidator();
		if (emailValidator.validate(email?.toString()) || !firstName || !lastName || !password) {
			errorFlg = true
		}
		
		if (errorFlg) {
			redirect action:"index"
			return;
		}
		
		def shippingDetail = new ShippingDetail()
		shippingDetail.name = firstName + " " + lastName
		shippingDetail.save(flush:true)
		
		def newUser = new Member(username: email, password: password,
			firstName : firstName,
			lastName: lastName,
			shippingDetail: shippingDetail).save(flush:true)
			
		redirect controller:"index", action:"mainPage"
	}
}
