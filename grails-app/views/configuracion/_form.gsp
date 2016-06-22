<%@ page import="colector.Configuracion" %>



<div class="fieldcontain ${hasErrors(bean: configuracionInstance, field: 'ensayos', 'error')} required">
	<label for="ensayos">
		<g:message code="configuracion.ensayos.label" default="Ensayos" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: configuracionInstance, field: 'equipos', 'error')} required">
	<label for="equipos">
		<g:message code="configuracion.equipos.label" default="Equipos" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

