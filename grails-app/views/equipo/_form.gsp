<%@ page import="colector.Equipo" %>



<div class="fieldcontain ${hasErrors(bean: equipoInstance, field: 'temperaturaAgua', 'error')} required">
	<label for="temperaturaAgua">
		<g:message code="equipo.temperaturaAgua.label" default="Temperatura Agua" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="temperaturaAgua" value="${fieldValue(bean: equipoInstance, field: 'temperaturaAgua')}" required=""/>

</div>

