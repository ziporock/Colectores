
<%@ page import="colector.Configuracion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'configuracion.label', default: 'Configuracion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-configuracion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-configuracion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ensayos" title="${message(code: 'configuracion.ensayos.label', default: 'Ensayos')}" />
					
						<g:sortableColumn property="equipos" title="${message(code: 'configuracion.equipos.label', default: 'Equipos')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${configuracionInstanceList}" status="i" var="configuracionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${configuracionInstance.id}">${fieldValue(bean: configuracionInstance, field: "ensayos")}</g:link></td>
					
						<td>${fieldValue(bean: configuracionInstance, field: "equipos")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${configuracionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
