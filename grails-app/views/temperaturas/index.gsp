
<%@ page import="colector.Temperaturas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'temperaturas.label', default: 'Temperaturas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-temperaturas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-temperaturas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="equipos" title="${message(code: 'temperaturas.equipos.label', default: 'Equipos')}" />
					
						<g:sortableColumn property="tempAguaFria" title="${message(code: 'temperaturas.tempAguaFria.label', default: 'Temp Agua Fria')}" />
					
						<th><g:message code="temperaturas.testigo.label" default="Testigo" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${temperaturasInstanceList}" status="i" var="temperaturasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${temperaturasInstance.id}">${fieldValue(bean: temperaturasInstance, field: "equipos")}</g:link></td>
					
						<td>${fieldValue(bean: temperaturasInstance, field: "tempAguaFria")}</td>
					
						<td>${fieldValue(bean: temperaturasInstance, field: "testigo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${temperaturasInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
