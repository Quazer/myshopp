<%@ page import="com.nghia.shop.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'dateAdded', 'error')} required">
	<label for="dateAdded">
		<g:message code="product.dateAdded.label" default="Date Added" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateAdded" precision="day"  value="${productInstance?.dateAdded}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'images', 'error')} ">
	<label for="images">
		<g:message code="product.images.label" default="Images" />
		
	</label>
	<g:select name="images" from="${com.nghia.shop.ImageStore.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.images*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productRelated', 'error')} ">
	<label for="productRelated">
		<g:message code="product.productRelated.label" default="Product Related" />
		
	</label>
	<g:select name="productRelated" from="${com.nghia.shop.Product.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.productRelated*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'supplier', 'error')} required">
	<label for="supplier">
		<g:message code="product.supplier.label" default="Supplier" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="supplier" name="supplier.id" from="${com.nghia.shop.User.list()}" optionKey="id" required="" value="${productInstance?.supplier?.id}" class="many-to-one"/>
</div>

