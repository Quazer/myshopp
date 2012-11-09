
<%@ page import="com.nghia.shop.ShoppingCart" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shoppingCart.label', default: 'ShoppingCart')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-shoppingCart" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-shoppingCart" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="shoppingCart.shippingMethod.label" default="Shipping Method" /></th>
					
						<g:sortableColumn property="giftQuantity" title="${message(code: 'shoppingCart.giftQuantity.label', default: 'Gift Quantity')}" />
					
						<th><g:message code="shoppingCart.member.label" default="Member" /></th>
					
						<th><g:message code="shoppingCart.product.label" default="Product" /></th>
					
						<g:sortableColumn property="quantity" title="${message(code: 'shoppingCart.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="shippedQuantity" title="${message(code: 'shoppingCart.shippedQuantity.label', default: 'Shipped Quantity')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shoppingCartInstanceList}" status="i" var="shoppingCartInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${shoppingCartInstance.id}">${fieldValue(bean: shoppingCartInstance, field: "shippingMethod")}</g:link></td>
					
						<td>${fieldValue(bean: shoppingCartInstance, field: "giftQuantity")}</td>
					
						<td>${fieldValue(bean: shoppingCartInstance, field: "member")}</td>
					
						<td>${fieldValue(bean: shoppingCartInstance, field: "product")}</td>
					
						<td>${fieldValue(bean: shoppingCartInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: shoppingCartInstance, field: "shippedQuantity")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${shoppingCartInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
