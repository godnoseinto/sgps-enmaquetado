<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:s="/struts-tags" xmlns:sj="/struts-jquery-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Head -->
<jsp:text>
	<![CDATA[
		<script type="text/javascript" src="${pageContext.request.contextPath}/pages/tarea/tareas/js/index.js"></script>
	]]>
</jsp:text>
</head>
<body>

	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#tareas">Tareas</a></li>
		<li><a data-toggle="tab" href="#gantt">Gantt</a></li>
		<li><a data-toggle="tab" href="#recursos">Recursos</a></li>
	</ul>

	<div class="container-fluid text-center">
		<div class="row content tab-content">
			<div id="tareas" class="tab-pane fade in active">
				<div class="col-sm-12 text-left">
					<h1>Tareas del proyecto</h1>
					<table id="tblTareas"
						class="table table-bordered table-hover table-condensed bg-1 table-responsive">
						<thead>
							<tr>

								<th>Tarea</th>

								<th>Responsable</th>

								<th>Prioridad</th>

								<th>Status</th>

								<th>Acciones</th>

							</tr>
						</thead>
						<tbody>
							<tr>

								<td>Analisis de datos</td>

								<td>Pablo Garcia</td>

								<td>Alta</td>

								<td>Inicializada</td>

								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a> <a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
										<s:property value="''" /> <i class="material-icons">&#xE872;</i>
								</a> <a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/new">
										<s:property value="''" /> <i class="material-icons">&#xE150;</i>
								</a> <a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareasnueva/new">
										<s:property value="''" /> <i class="material-icons">&#xE7FE;</i>
								</a></td>

							</tr>
							<tr>

								<td>Planeacion de la base de datos</td>

								<td>Francisco Gutierres</td>

								<td>Media</td>

								<td>Finalizada</td>

								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a></td>

							</tr>
							<tr>

								<td>Implementacion de la base de datos</td>

								<td>Francisco Gutierres</td>

								<td>Media</td>

								<td>Inicializada</td>

								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a> <a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
										<s:property value="''" /> <i class="material-icons">&#xE872;</i>
								</a> <a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/new">
										<s:property value="''" /> <i class="material-icons">&#xE150;</i>
								</a> <a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareasnueva/new">
										<s:property value="''" /> <i class="material-icons">&#xE7FE;</i>
								</a></td>

							</tr>
							<s:iterator value="listTareas" var="tarea">
								<tr>
									<td><s:property value="%{#tarea.nombre}" /></td>
									<td><s:property value="%{#tarea.id}" /></td>
									<td><s:property value="%{#tarea.nombre}" /></td>
									<td><s:property value="%{#tarea.idEstado}" /></td>
									<td></td>
								</tr>
							</s:iterator>
						</tbody>


					</table>


				</div>
				<div class="col-sm-12 text-center">

					<s:form id="frmAddTarea" method="post" theme="simple"
						cssClass="form form-horizontal form-medium form-simple" action="">
						<!-- Agregar Tarea -->
						<div class="form-group">
							<div class="col-xs-12 col-sm-6 col-md-6 ">

								<a class="btn btn-default btn-primary"
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareasnueva">
									<s:property value="'Nueva Tarea'" />
								</a>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6 ">
								<a class="btn btn-default btn-primary"
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/productividad/">
									<s:property value="'Estadisticas'" />
								</a>
							</div>
						</div>

					</s:form>
				</div>
			</div>

			<!-- Diagrama de gantt -->
			<div id="gantt" class="tab-pane fade">
				<h2>Gantt</h2>

				<div class="container">
					<h2>Interactive Gantt Chart entirely made in SVG!</h2>
					<div class="gantt-target"></div>
				</div>
			</div>

			<div id="recursos" class="tab-pane fade">
				<h2>Recursos</h2>

				<div class="col-sm-12 text-center">
					<table id="tblTareas"
						class="table table-bordered table-hover table-condensed bg-1 table-responsive">
						<thead>
							<tr>



								<th>Analistas</th>

								<th>Status</th>

								<th>Desempeño</th>

								<th>Acciones</th>

							<td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Pablo Garcia</td>

								<td>Activo</td>

								<td>Bueno</td>

								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a></td>
							</tr>

							<tr>
								<td>Veronica</td>

								<td>Activo</td>

								<td>Bueno</td>

								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a></td>
							</tr>

							<tr>
								<td>Fernando</td>

								<td>Activo</td>

								<td>Bueno</td>

								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a></td>
							</tr>
						</tbody>
					</table>


					<table id="tblTareas"
						class="table table-bordered table-hover table-condensed bg-1 table-responsive">
						<thead>
							<tr>



								<th>Programadores</th>

								<th>Status</th>

								<th>Desempeño</th>

								<th>Acciones</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Luis Hernandes</td>

								<td>Activo</td>

								<td>Bueno</td>

								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a></td>
							</tr>

							<tr>
								<td>Maria</td>

								<td>Activo</td>

								<td>Bueno</td>

								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a></td>
							</tr>

							<tr>
								<td>Fernanda</td>

								<td>No Activo</td>

								<td>Malo</td>

								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
	</html>
</jsp:root>