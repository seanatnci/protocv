
<%@ page import="protocv.Education" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-education" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-education" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list education">
			
				<g:if test="${educationInstance?.award}">
				<li class="fieldcontain">
					<span id="award-label" class="property-label"><g:message code="education.award.label" default="Award" /></span>
					
						<span class="property-value" aria-labelledby="award-label"><g:fieldValue bean="${educationInstance}" field="award"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="education.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:fieldValue bean="${educationInstance}" field="course"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.institution}">
				<li class="fieldcontain">
					<span id="institution-label" class="property-label"><g:message code="education.institution.label" default="Institution" /></span>
					
						<span class="property-value" aria-labelledby="institution-label"><g:fieldValue bean="${educationInstance}" field="institution"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.level}">
				<li class="fieldcontain">
					<span id="level-label" class="property-label"><g:message code="education.level.label" default="Level" /></span>
					
						<span class="property-value" aria-labelledby="level-label"><g:fieldValue bean="${educationInstance}" field="level"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:educationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${educationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
