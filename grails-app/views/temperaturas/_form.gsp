<%@ page import="colector.Temperaturas" %>



<div class="fieldcontain ${hasErrors(bean: temperaturasInstance, field: 'equipos', 'error')} required">
	<label for="equipos">
		<g:message code="temperaturas.equipos.label" default="Equipos" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: temperaturasInstance, field: 'tempAguaFria', 'error')} required">
	<label for="tempAguaFria">
		<g:message code="temperaturas.tempAguaFria.label" default="Temp Agua Fria" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tempAguaFria" value="${fieldValue(bean: temperaturasInstance, field: 'tempAguaFria')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: temperaturasInstance, field: 'testigo', 'error')} required">
	<label for="testigo">
		<g:message code="temperaturas.testigo.label" default="Testigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="testigo" name="testigo.id" from="${colector.Equipo.list()}" optionKey="id" required="" value="${temperaturasInstance?.testigo?.id}" class="many-to-one"/>

</div>

