<%@ page import="com.nghia.shop.ShoppingCart" %>



<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'shippingMethod', 'error')} ">
	<label for="shippingMethod">
		<g:message code="shoppingCart.shippingMethod.label" default="Shipping Method" />
		
	</label>
	<g:select id="shippingMethod" name="shippingMethod.id" from="${com.nghia.shop.ShippingMethod.list()}" optionKey="id" value="${shoppingCartInstance?.shippingMethod?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'giftQuantity', 'error')} required">
	<label for="giftQuantity">
		<g:message code="shoppingCart.giftQuantity.label" default="Gift Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="giftQuantity" type="number" value="${shoppingCartInstance.giftQuantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="shoppingCart.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${com.nghia.shop.Member.list()}" optionKey="id" required="" value="${shoppingCartInstance?.member?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="shoppingCart.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${com.nghia.shop.Product.list()}" optionKey="id" required="" value="${shoppingCartInstance?.product?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="shoppingCart.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${shoppingCartInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'shippedQuantity', 'error')} required">
	<label for="shippedQuantity">
		<g:message code="shoppingCart.shippedQuantity.label" default="Shipped Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="shippedQuantity" type="number" value="${shoppingCartInstance.shippedQuantity}" required=""/>
</div>

