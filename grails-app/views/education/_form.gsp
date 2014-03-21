<%@ page import="protocv.Education" %>

<g:textField name="person" value="${educationInstance?.person.id}"/>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'award', 'error')} ">
	<label for="award">
		<g:message code="education.award.label" default="Award" />
		
	</label>
	<g:textField name="award" value="${educationInstance?.award}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'course', 'error')} ">
	<label for="course">
		<g:message code="education.course.label" default="Course" />
		
	</label>
	<g:textField name="course" value="${educationInstance?.course}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'institution', 'error')} ">
	<label for="institution">
		<g:message code="education.institution.label" default="Institution" />
		
	</label>
	<g:textField name="institution" value="${educationInstance?.institution}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'level', 'error')} ">
	<label for="level">
		<g:message code="education.level.label" default="Level" />
		
	</label>
	<g:textField name="level" value="${educationInstance?.level}"/>

</div>

