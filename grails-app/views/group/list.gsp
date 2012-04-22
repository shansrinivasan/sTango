
<%@ page import="stango.Group" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'group.label', default: 'Group')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-group" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-group" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="group.admin.label" default="Admin" /></th>
					
						<th><g:message code="group.country.label" default="Country" /></th>
					
						<g:sortableColumn property="description" title="${message(code: 'group.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'group.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="groupName" title="${message(code: 'group.groupName.label', default: 'Group Name')}" />
					
						<g:sortableColumn property="homePageheadline" title="${message(code: 'group.homePageheadline.label', default: 'Home Pageheadline')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${groupInstanceList}" status="i" var="groupInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${groupInstance.id}">${fieldValue(bean: groupInstance, field: "admin")}</g:link></td>
					
						<td>${fieldValue(bean: groupInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: groupInstance, field: "description")}</td>
					
						<td><g:formatDate date="${groupInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: groupInstance, field: "groupName")}</td>
					
						<td>${fieldValue(bean: groupInstance, field: "homePageheadline")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${groupInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
