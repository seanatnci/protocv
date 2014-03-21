<%@ page import="protocv.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'addressLine1', 'error')} ">
	<label for="addressLine1">
		<g:message code="person.addressLine1.label" default="Address Line1" />
		
	</label>
	<g:textField name="addressLine1" value="${personInstance?.addressLine1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'addressLine2', 'error')} ">
	<label for="addressLine2">
		<g:message code="person.addressLine2.label" default="Address Line2" />
		
	</label>
	<g:textField name="addressLine2" value="${personInstance?.addressLine2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="person.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${personInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'county', 'error')} ">
	<label for="county">
		<g:message code="person.county.label" default="County" />
		
	</label>
	<g:textField name="county" value="${personInstance?.county}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="person.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${personInstance?.dob}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'educations', 'error')} ">
	<label for="educations">
		<g:message code="person.educations.label" default="Educations" />
		
	</label>
	<g:select name="educations" from="${protocv.Education.list()}" multiple="multiple" optionKey="id" size="5" value="${personInstance?.educations*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="person.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${personInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="person.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${personInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="person.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${personInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'telNo', 'error')} ">
	<label for="telNo">
		<g:message code="person.telNo.label" default="Tel No" />
		
	</label>
	<g:textField name="telNo" value="${personInstance?.telNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'town', 'error')} ">
	<label for="town">
		<g:message code="person.town.label" default="Town" />
		
	</label>
	<g:textField name="town" value="${personInstance?.town}"/>

</div>

