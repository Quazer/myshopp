
<%@ page import="com.nghia.shop.ImageStore" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imageStore.label', default: 'ImageStore')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-imageStore" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-imageStore" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list imageStore">
			
				<g:if test="${imageStoreInstance?.fileName}">
				<li class="fieldcontain">
					<span id="fileName-label" class="property-label"><g:message code="imageStore.fileName.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${imageStoreInstance}" field="fileName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageStoreInstance?.filePath}">
				<li class="fieldcontain">
					<span id="filePath-label" class="property-label"><g:message code="imageStore.filePath.label" default="File Path" /></span>
					
						<span class="property-value" aria-labelledby="filePath-label"><g:fieldValue bean="${imageStoreInstance}" field="filePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageStoreInstance?.isExternal}">
				<li class="fieldcontain">
					<span id="isExternal-label" class="property-label"><g:message code="imageStore.isExternal.label" default="Is External" /></span>
					
						<span class="property-value" aria-labelledby="isExternal-label"><g:formatBoolean boolean="${imageStoreInstance?.isExternal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageStoreInstance?.thumbnailPath}">
				<li class="fieldcontain">
					<span id="thumbnailPath-label" class="property-label"><g:message code="imageStore.thumbnailPath.label" default="Thumbnail Path" /></span>
					
						<span class="property-value" aria-labelledby="thumbnailPath-label"><g:fieldValue bean="${imageStoreInstance}" field="thumbnailPath"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${imageStoreInstance?.id}" />
					<g:link class="edit" action="edit" id="${imageStoreInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
