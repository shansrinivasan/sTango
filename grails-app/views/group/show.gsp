
<%@ page import="stango.Group" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'group.label', default: 'Group')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-group" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-group" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list group">
			
				<g:if test="${groupInstance?.admin}">
				<li class="fieldcontain">
					<span id="admin-label" class="property-label"><g:message code="group.admin.label" default="Admin" /></span>
					
						<span class="property-value" aria-labelledby="admin-label"><g:link controller="user" action="show" id="${groupInstance?.admin?.id}">${groupInstance?.admin?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="group.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${groupInstance?.country?.id}">${groupInstance?.country?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="group.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${groupInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="group.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${groupInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupInstance?.groupName}">
				<li class="fieldcontain">
					<span id="groupName-label" class="property-label"><g:message code="group.groupName.label" default="Group Name" /></span>
					
						<span class="property-value" aria-labelledby="groupName-label"><g:fieldValue bean="${groupInstance}" field="groupName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupInstance?.homePageheadline}">
				<li class="fieldcontain">
					<span id="homePageheadline-label" class="property-label"><g:message code="group.homePageheadline.label" default="Home Pageheadline" /></span>
					
						<span class="property-value" aria-labelledby="homePageheadline-label"><g:fieldValue bean="${groupInstance}" field="homePageheadline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="group.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label">

                          <img src="${createLink(controller:'fileUploader', action:'show', id:test.id )}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="group.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${groupInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="group.user.label" default="User" /></span>
					
						<g:each in="${groupInstance.user}" var="u">
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${groupInstance?.zip}">
				<li class="fieldcontain">
					<span id="zip-label" class="property-label"><g:message code="group.zip.label" default="Zip" /></span>
					
						<span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${groupInstance}" field="zip"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${groupInstance?.id}" />
					<g:link class="edit" action="edit" id="${groupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
