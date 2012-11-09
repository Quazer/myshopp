
<%@ page import="com.nghia.shop.ShoppingCart" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shoppingCart.label', default: 'ShoppingCart')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-shoppingCart" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-shoppingCart" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list shoppingCart">
			
				<g:if test="${shoppingCartInstance?.shippingMethod}">
				<li class="fieldcontain">
					<span id="shippingMethod-label" class="property-label"><g:message code="shoppingCart.shippingMethod.label" default="Shipping Method" /></span>
					
						<span class="property-value" aria-labelledby="shippingMethod-label"><g:link controller="shippingMethod" action="show" id="${shoppingCartInstance?.shippingMethod?.id}">${shoppingCartInstance?.shippingMethod?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.giftQuantity}">
				<li class="fieldcontain">
					<span id="giftQuantity-label" class="property-label"><g:message code="shoppingCart.giftQuantity.label" default="Gift Quantity" /></span>
					
						<span class="property-value" aria-labelledby="giftQuantity-label"><g:fieldValue bean="${shoppingCartInstance}" field="giftQuantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="shoppingCart.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${shoppingCartInstance?.member?.id}">${shoppingCartInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="shoppingCart.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${shoppingCartInstance?.product?.id}">${shoppingCartInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="shoppingCart.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${shoppingCartInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.shippedQuantity}">
				<li class="fieldcontain">
					<span id="shippedQuantity-label" class="property-label"><g:message code="shoppingCart.shippedQuantity.label" default="Shipped Quantity" /></span>
					
						<span class="property-value" aria-labelledby="shippedQuantity-label"><g:fieldValue bean="${shoppingCartInstance}" field="shippedQuantity"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${shoppingCartInstance?.id}" />
					<g:link class="edit" action="edit" id="${shoppingCartInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
