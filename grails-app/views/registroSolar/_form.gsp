<%@ page import="colector.RegistroSolar" %>



<div class="fieldcontain ${hasErrors(bean: registroSolarInstance, field: 'energiaAcumuladaHoy', 'error')} required">
	<label for="energiaAcumuladaHoy">
		<g:message code="registroSolar.energiaAcumuladaHoy.label" default="Energia Acumulada Hoy" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="energiaAcumuladaHoy" value="${fieldValue(bean: registroSolarInstance, field: 'energiaAcumuladaHoy')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroSolarInstance, field: 'energiaDiaAnterior', 'error')} required">
	<label for="energiaDiaAnterior">
		<g:message code="registroSolar.energiaDiaAnterior.label" default="Energia Dia Anterior" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="energiaDiaAnterior" value="${fieldValue(bean: registroSolarInstance, field: 'energiaDiaAnterior')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroSolarInstance, field: 'nroLectura', 'error')} required">
	<label for="nroLectura">
		<g:message code="registroSolar.nroLectura.label" default="Nro Lectura" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nroLectura" type="number" value="${registroSolarInstance.nroLectura}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroSolarInstance, field: 'potencia', 'error')} required">
	<label for="potencia">
		<g:message code="registroSolar.potencia.label" default="Potencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="potencia" value="${fieldValue(bean: registroSolarInstance, field: 'potencia')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroSolarInstance, field: 'promedio', 'error')} required">
	<label for="promedio">
		<g:message code="registroSolar.promedio.label" default="Promedio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="promedio" value="${fieldValue(bean: registroSolarInstance, field: 'promedio')}" required=""/>

</div>

