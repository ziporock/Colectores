
<%@ page import="colector.RegistroSolar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registroSolar.label', default: 'RegistroSolar')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registroSolar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registroSolar" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registroSolar">
			
				<g:if test="${registroSolarInstance?.energiaAcumuladaHoy}">
				<li class="fieldcontain">
					<span id="energiaAcumuladaHoy-label" class="property-label"><g:message code="registroSolar.energiaAcumuladaHoy.label" default="Energia Acumulada Hoy" /></span>
					
						<span class="property-value" aria-labelledby="energiaAcumuladaHoy-label"><g:fieldValue bean="${registroSolarInstance}" field="energiaAcumuladaHoy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroSolarInstance?.energiaDiaAnterior}">
				<li class="fieldcontain">
					<span id="energiaDiaAnterior-label" class="property-label"><g:message code="registroSolar.energiaDiaAnterior.label" default="Energia Dia Anterior" /></span>
					
						<span class="property-value" aria-labelledby="energiaDiaAnterior-label"><g:fieldValue bean="${registroSolarInstance}" field="energiaDiaAnterior"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroSolarInstance?.nroLectura}">
				<li class="fieldcontain">
					<span id="nroLectura-label" class="property-label"><g:message code="registroSolar.nroLectura.label" default="Nro Lectura" /></span>
					
						<span class="property-value" aria-labelledby="nroLectura-label"><g:fieldValue bean="${registroSolarInstance}" field="nroLectura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroSolarInstance?.potencia}">
				<li class="fieldcontain">
					<span id="potencia-label" class="property-label"><g:message code="registroSolar.potencia.label" default="Potencia" /></span>
					
						<span class="property-value" aria-labelledby="potencia-label"><g:fieldValue bean="${registroSolarInstance}" field="potencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroSolarInstance?.promedio}">
				<li class="fieldcontain">
					<span id="promedio-label" class="property-label"><g:message code="registroSolar.promedio.label" default="Promedio" /></span>
					
						<span class="property-value" aria-labelledby="promedio-label"><g:fieldValue bean="${registroSolarInstance}" field="promedio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:registroSolarInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${registroSolarInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
