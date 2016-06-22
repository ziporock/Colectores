
<%@ page import="colector.RegistroSolar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registroSolar.label', default: 'RegistroSolar')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registroSolar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registroSolar" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="energiaAcumuladaHoy" title="${message(code: 'registroSolar.energiaAcumuladaHoy.label', default: 'Energia Acumulada Hoy')}" />
					
						<g:sortableColumn property="energiaDiaAnterior" title="${message(code: 'registroSolar.energiaDiaAnterior.label', default: 'Energia Dia Anterior')}" />
					
						<g:sortableColumn property="nroLectura" title="${message(code: 'registroSolar.nroLectura.label', default: 'Nro Lectura')}" />
					
						<g:sortableColumn property="potencia" title="${message(code: 'registroSolar.potencia.label', default: 'Potencia')}" />
					
						<g:sortableColumn property="promedio" title="${message(code: 'registroSolar.promedio.label', default: 'Promedio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registroSolarInstanceList}" status="i" var="registroSolarInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registroSolarInstance.id}">${fieldValue(bean: registroSolarInstance, field: "energiaAcumuladaHoy")}</g:link></td>
					
						<td>${fieldValue(bean: registroSolarInstance, field: "energiaDiaAnterior")}</td>
					
						<td>${fieldValue(bean: registroSolarInstance, field: "nroLectura")}</td>
					
						<td>${fieldValue(bean: registroSolarInstance, field: "potencia")}</td>
					
						<td>${fieldValue(bean: registroSolarInstance, field: "promedio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registroSolarInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
