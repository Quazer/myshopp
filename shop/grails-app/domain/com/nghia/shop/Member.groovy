package com.nghia.shop

class Member {
	
	/******************************
	 * Spring security
	 ******************************/
	transient springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	/**
	 * User Profile 
	 */
	ShippingDetail shippingDetail
	
	/**
	 * false : cannot upload any products
	 * true  : can upload product
	 */
	boolean canPostProduct = false
	
	static hasMany = [orders: Orders, 
		productPosted: Product,
		wishList: Product]
	
	/*****************************
	 * Constraint
	 *****************************/
	static constraints = {
		username blank: false, unique: true
		password blank: false
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
