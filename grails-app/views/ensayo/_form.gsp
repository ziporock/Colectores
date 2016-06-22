<%@ page import="colector.Ensayo" %>



<div class="fieldcontain ${hasErrors(bean: ensayoInstance, field: 'cantLitros', 'error')} required">
	<label for="cantLitros">
		<g:message code="ensayo.cantLitros.label" default="Cant Litros" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantLitros" value="${fieldValue(bean: ensayoInstance, field: 'cantLitros')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: ensayoInstance, field: 'hora', 'error')} required">
	<label for="hora">
		<g:message code="ensayo.hora.label" default="Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hora" required="" value="${ensayoInstance?.hora}"/>

</div>

