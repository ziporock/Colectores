<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main"/>
<title>Protocolo de ensayo de producción de agua caliente</title>
</head>
<body>
	<div class="body">
		<h1>Lecturas</h1>
		<table cellspacing="2" border="4">
			<tr>
				<td>Registro Solar</td>
				<td>Temperaturas Agua [°C]</td>

			</tr>


			<tr>
				<td width="50%">
					<table
						<tr>
							<td>
								Potencia<br>
								<input type="text" value="111" size=5><br>
								Irradiancia<br>[Wm]
							</td>
							<td>
							N° de Lecturas<br>
							<input type="text" value="111" size=5><br>
							</td>	
							<td>
							Promedio<br>
							<input type="text" value="111" size=5><br>
								Irradiancia<br>[Wm]
							</td>
						</tr>
						<tr>
							<td width="50%">
								Energia dia Anterior<br>
								<input type="text" value="111" size=5><br>
								Irradiancia<br>[Wm]
							</td>
							<td width="50%">
								Energia Acumulada hoy<br>
								<input type="text" value="111" size=5><br>
								Radiacion<br>[Wm dia]
							</td>
						</tr></table>
				</td>
				<td width="50%">
					<table
						<tr>
					
					<td>
						Equipo 1<br>
						<input type="text" value="61" size=5>
						
					</td>
					<td>
						Equipo 2<br>
						<input type="text" value="48" size=5>
						
					</td>
					<td>
						Equipo 3<br>
						<input type="text" value="32" size=5>
						
					</td>
					<td>
						Equipo 4<br>
						<input type="text" value="63" size=5>
						
					</td>
					
					</tr>
						<tr>
					<td>
						Equipo 5<br>
						<input type="text" value="30" size=5>
						
					</td>
					<td>
						Equipo 6<br>
						<input type="text" value="--" size=5>
						
					</td>
					<td>
						Equipo 7<br>
						<input type="text" value="--" size=5>
						
					</td>
					<td>
						Equipo 8<br>
						<input type="text" value="--" size=5>
						
					</td>
					
					</tr>
						</tr>
						<tr>
							<td></td>

							<td>Testigo<br> <input type="text" value="34,7" size=5>

							</td>
							<td>Agua Fria<br> <input type="text" value="27" size=5>

							</td>
						</tr>
					</table>

				</td>

			</tr>
			<tr>
				<td></td>
				<td align="rigth"><g:actionSubmit value="Actualizar"
						action="Update" /></td>
			</tr>
		</table>
		Configuracion
		<table style="width:100%">
			<tr>
				<td width="5%">
					<table>
						<tr>
							<td></td>
							<td>Hora</td>
							<td>Litros</td>
						</tr>
						<tr>
							<td>1er ensayo</td>
							<td><input type="text" value="08:30" size=1></td>
							<td><input type="text" value="40" size=1></td>
						</tr>

						<tr>
							<td>2do ensayo</td>
							<td><input type="text" value="14:49" size=1></td>
							<td><input type="text" value="50" size=1></td>
						</tr>

						<tr>
							<td>3er ensayo</td>
							<td><input type="text" value="17:00" size=1></td>
							<td><input type="text" value="30" size=1></td>
						</tr>

					</table>

				</td>
				<td width="90%">
					<table>
						<tr>
							<td>Equipo 1 = 2.0</td>
							<td>Equipo 2 = 2.1</td>
							<td>Equipo 3 = 2.1</td>
							<td>Equipo 4 = 2.1</td>
						</tr>
						<tr>
							<td>Equipo 5 = 2.0</td>
							<td>Equipo 6 = NO</td>
							<td>Equipo 7 = NO</td>
							<td>Equipo 8 = 2.1</td>
						</tr>

					</table>
				</td>
				<td width="5%">
				<table>
				<tr>
				<td><g:actionSubmit value="Configuraciones"
						action="Update" /></td>
				</tr>
				<tr>
				<td><g:actionSubmit value="Listado de Ensayos"
						action="Update" /></td>
				</tr>
				</table>
				</td>
				

			</tr>


		</table>

		Registro
		
		<table>
			<tr>
			
			<td>Fecha</td>
			<td>Hora</td>
			<td>Equipo</td>
			<td>Litro</td>
			<td>A Cal [°C]</td>
			<td>Test [°C]</td>
			<td>A. Fria [°C]</td>
			<td>T. Uso [°C]</td>
			<td>V.A. Fria[L]</td>
			<td>V. Total [L]</td>
			</tr>
			<tr>
			<td>14/03/2016</td>
			<td>14:50:24</td>
			<td>5</td>
			<td>0</td>
			
			</tr>
			<tr>
			<td>14/03/2016</td>
			<td>14:51:18</td>
			<td>5</td>
			<td>ERROR</td>
			
			</tr>
		
		</table>


	</div>
</body>
</html>