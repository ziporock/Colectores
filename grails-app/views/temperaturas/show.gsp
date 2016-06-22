
<%@ page import="colector.Temperaturas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'temperaturas.label', default: 'Temperaturas')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-temperaturas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-temperaturas" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list temperaturas">
			
				<g:if test="${temperaturasInstance?.equipos}">
				<li class="fieldcontain">
					<span id="equipos-label" class="property-label"><g:message code="temperaturas.equipos.label" default="Equipos" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${temperaturasInstance?.tempAguaFria}">
				<li class="fieldcontain">
					<span id="tempAguaFria-label" class="property-label"><g:message code="temperaturas.tempAguaFria.label" default="Temp Agua Fria" /></span>
					
						<span class="property-value" aria-labelledby="tempAguaFria-label"><g:fieldValue bean="${temperaturasInstance}" field="tempAguaFria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${temperaturasInstance?.testigo}">
				<li class="fieldcontain">
					<span id="testigo-label" class="property-label"><g:message code="temperaturas.testigo.label" default="Testigo" /></span>
					
						<span class="property-value" aria-labelledby="testigo-label"><g:link controller="equipo" action="show" id="${temperaturasInstance?.testigo?.id}">${temperaturasInstance?.testigo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:temperaturasInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${temperaturasInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
