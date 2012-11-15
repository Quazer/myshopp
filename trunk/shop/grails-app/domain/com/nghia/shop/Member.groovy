package com.nghia.shop

class Member {
	
	/******************************
	 * Spring security
	 ******************************/
	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired = false
	boolean accountLocked = false
	boolean passwordExpired = false

	/**
	 * User Profile 
	 */
	ShippingDetail shippingDetail
	
	/**
	 * false : cannot upload any products
	 * true  : can upload product
	 */
	boolean canPostProduct = false
	
	static hasMany = [orders: Orders, productPosted: Product, wishList: Product, shippingAddress: ShippingDetail]
	
	/*****************************
	 * Constraint
	 *****************************/
	static constraints = {
		username blank: false, unique: true
		password blank: false
		
		// TODO: need to modify
		shippingDetail nullable:true
		
		shippingAddress nullable:true
		orders nullable: true
		productPosted nullable: true
		wishList nullable: true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
