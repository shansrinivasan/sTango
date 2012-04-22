<%@ page import="stango.Country" %>



<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'countryCode', 'error')} ">
	<label for="countryCode">
		<g:message code="country.countryCode.label" default="Country Code" />
		
	</label>
	<g:textField name="countryCode" value="${countryInstance?.countryCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'countryName', 'error')} ">
	<label for="countryName">
		<g:message code="country.countryName.label" default="Country Name" />
		
	</label>
	<g:textField name="countryName" value="${countryInstance?.countryName}"/>
</div>

