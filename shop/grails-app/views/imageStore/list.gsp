
<%@ page import="com.nghia.shop.ImageStore" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imageStore.label', default: 'ImageStore')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-imageStore" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-imageStore" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fileName" title="${message(code: 'imageStore.fileName.label', default: 'File Name')}" />
					
						<g:sortableColumn property="filePath" title="${message(code: 'imageStore.filePath.label', default: 'File Path')}" />
					
						<g:sortableColumn property="isExternal" title="${message(code: 'imageStore.isExternal.label', default: 'Is External')}" />
					
						<g:sortableColumn property="thumbnailPath" title="${message(code: 'imageStore.thumbnailPath.label', default: 'Thumbnail Path')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imageStoreInstanceList}" status="i" var="imageStoreInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imageStoreInstance.id}">${fieldValue(bean: imageStoreInstance, field: "fileName")}</g:link></td>
					
						<td>${fieldValue(bean: imageStoreInstance, field: "filePath")}</td>
					
						<td><g:formatBoolean boolean="${imageStoreInstance.isExternal}" /></td>
					
						<td>${fieldValue(bean: imageStoreInstance, field: "thumbnailPath")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imageStoreInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
