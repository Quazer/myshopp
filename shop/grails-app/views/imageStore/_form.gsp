<%@ page import="com.nghia.shop.ImageStore" %>



<div class="fieldcontain ${hasErrors(bean: imageStoreInstance, field: 'fileName', 'error')} ">
	<label for="fileName">
		<g:message code="imageStore.fileName.label" default="File Name" />
		
	</label>
	<g:textField name="fileName" value="${imageStoreInstance?.fileName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imageStoreInstance, field: 'filePath', 'error')} ">
	<label for="filePath">
		<g:message code="imageStore.filePath.label" default="File Path" />
		
	</label>
	<g:textField name="filePath" value="${imageStoreInstance?.filePath}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imageStoreInstance, field: 'isExternal', 'error')} ">
	<label for="isExternal">
		<g:message code="imageStore.isExternal.label" default="Is External" />
		
	</label>
	<g:checkBox name="isExternal" value="${imageStoreInstance?.isExternal}" />
</div>

<div class="fieldcontain ${hasErrors(bean: imageStoreInstance, field: 'thumbnailPath', 'error')} ">
	<label for="thumbnailPath">
		<g:message code="imageStore.thumbnailPath.label" default="Thumbnail Path" />
		
	</label>
	<g:textField name="thumbnailPath" value="${imageStoreInstance?.thumbnailPath}"/>
</div>

