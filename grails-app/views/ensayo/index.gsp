
<%@ page import="colector.Ensayo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ensayo.label', default: 'Ensayo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ensayo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ensayo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cantLitros" title="${message(code: 'ensayo.cantLitros.label', default: 'Cant Litros')}" />
					
						<g:sortableColumn property="hora" title="${message(code: 'ensayo.hora.label', default: 'Hora')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ensayoInstanceList}" status="i" var="ensayoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ensayoInstance.id}">${fieldValue(bean: ensayoInstance, field: "cantLitros")}</g:link></td>
					
						<td>${fieldValue(bean: ensayoInstance, field: "hora")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ensayoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
