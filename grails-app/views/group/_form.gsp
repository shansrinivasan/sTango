<%@ page import="stango.Group" %>



<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'admin', 'error')} required">
	<label for="admin">
		<g:message code="group.admin.label" default="Admin" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="admin" name="admin.id" from="${stango.User.list()}" optionKey="id" required="" value="${groupInstance?.admin?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="group.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="country" name="country.id" from="${stango.Country.list()}" optionKey="id" required="" value="${groupInstance?.country?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="group.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${groupInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="group.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${groupInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'groupName', 'error')} ">
	<label for="groupName">
		<g:message code="group.groupName.label" default="Group Name" />
		
	</label>
	<g:textField name="groupName" value="${groupInstance?.groupName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'homePageheadline', 'error')} ">
	<label for="homePageheadline">
		<g:message code="group.homePageheadline.label" default="Home Pageheadline" />
		
	</label>
	<g:textField name="homePageheadline" value="${groupInstance?.homePageheadline}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="group.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	   <input type="file" name="image" />
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="group.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${groupInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="group.user.label" default="User" />
		
	</label>
	<g:select name="user" from="${stango.User.list()}" multiple="multiple" optionKey="id" size="5" value="${groupInstance?.user*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'zip', 'error')} ">
	<label for="zip">
		<g:message code="group.zip.label" default="Zip" />
		
	</label>
	<g:textField name="zip" value="${groupInstance?.zip}"/>
</div>

