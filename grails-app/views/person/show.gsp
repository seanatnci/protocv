
<%@ page import="protocv.Person" %>
<%@ page import="java.lang.String" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
                                <li class="fieldcontain">
				<g:if test="${personInstance?.firstName}">
					<span class="inline-property-value"><g:fieldValue bean="${personInstance}" field="firstName"/></span>
				</g:if>
			
				<g:if test="${personInstance?.lastName}">
					<span class="" ><g:fieldValue bean="${personInstance}" field="lastName"/></span>
				</g:if>
                                </li>
                                
                                <g:if test="${personInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="person.dob.label" default="Dob" /></span>
					<span class="property-value" aria-labelledby="dob-label"><g:formatDate format="D mmm yyyy" date="${personInstance?.dob}" /></span>
					
				</li>
				</g:if>
                                <g:if test="${personInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="person.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.telNo}">
				<li class="fieldcontain">
					<span id="telNo-label" class="property-label"><g:message code="person.telNo.label" default="Tel No" /></span>
					
						<span class="property-value" aria-labelledby="telNo-label"><g:fieldValue bean="${personInstance}" field="telNo"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${personInstance?.addressLine1}">
				<li class="fieldcontain">
					<span id="addressLine1-label" class="property-label"><g:message code="person.addressLine1.label" default="Address Line1" /></span>
					
						<span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue bean="${personInstance}" field="addressLine1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="person.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${personInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
                                
                                <g:if test="${personInstance?.town}">
				<li class="fieldcontain">
					<span id="town-label" class="property-label"><g:message code="person.town.label" default="Town" /></span>
					
						<span class="property-value" aria-labelledby="town-label"><g:fieldValue bean="${personInstance}" field="town"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${personInstance?.county}">
				<li class="fieldcontain">
					<span id="county-label" class="property-label"><g:message code="person.county.label" default="County" /></span>
					
						<span class="property-value" aria-labelledby="county-label"><g:fieldValue bean="${personInstance}" field="county"/></span>
					
				</li>
				</g:if>
                          
                          <g:if test="${personInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="person.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${personInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
			
				
			
				<g:if test="${personInstance?.educations}">
				<li class="fieldcontain">
					<span id="educations-label" class="property-label"><g:message code="person.educations.label" default="Educations" /></span>
					
						<g:each in="${personInstance.educations}" var="e">
						<span class="property-value" aria-labelledby="educations-label"><g:link controller="education" action="show" id="${e.id}">level ${e?.level} ${e?.institution} award:${e?.award}</g:link></span>
						</g:each>
					
				</li>
				</g:if>		
			
			</ol>
                        <g:link controller="education" action="create" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "id")} Add education</g:link>
			
			<g:form url="[resource:personInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
