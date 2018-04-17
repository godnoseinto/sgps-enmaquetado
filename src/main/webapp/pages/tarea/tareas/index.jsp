<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:s="/struts-tags" xmlns:sj="/struts-jquery-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Head -->
</head>
<body>
	<div class="container-fluid text-center">
		<div class="row content">



			<div class="col-sm-12 text-left">
				<h1>Tareas del proyecto</h1>
				<table class="table table-bordered table-hover table-condensed bg-1 table-responsive">
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

							<td>
								<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
					               <s:property value="''" />
			  		               <i class="material-icons">&#xE8F4;</i>
			  		            </a>
								<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
								   <s:property value="''" />
								   <i class="material-icons">&#xE872;</i>
						  		</a>
								<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/new">
								   <s:property value="''" />
								   <i class="material-icons">&#xE150;</i>
						  		</a>
								</td>

						</tr>
						<tr>

							<td>Planeacion de la base de datos</td>

							<td>Francisco Gutierres</td>

							<td>Media</td>

							<td>Finalizada</td>

							<td>
							    <a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
					               <s:property value="''" />
			  		               <i class="material-icons">&#xE8F4;</i>
			  		            </a>
								
							</td>

						</tr>
						<tr>

							<td>Implementacion de la base de datos</td>

							<td>Francisco Gutierres</td>

							<td>Media</td>

							<td>Inicializada</td>

							<td>
							    <a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
					               <s:property value="''" />
			  		               <i class="material-icons">&#xE8F4;</i>
			  		            </a>
								<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
								   <s:property value="''" />
								   <i class="material-icons">&#xE872;</i>
						  		</a>
								<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/new">
								   <s:property value="''" />
								   <i class="material-icons">&#xE150;</i>
						  		</a>
							</td>

						</tr>
						
					</tbody>


				</table>
				
				
			</div>
			<div class="col-sm-12 text-center"> 
			
			<s:form id="frmAddTarea" method="post" theme="simple"
				cssClass="form form-horizontal form-medium"
				action="">
				<!-- Agregar Tarea -->
				<div class="form-group">
					<div class="col-xs-12 col-sm-8 col-md-8 ">
						<select name="prioridad">
						  <option>Programador</option>
						  <option>Diseñador</option>
						  <option>Analista</option>
						</select>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 ">
						<s:submit cssClass="btn btn-primary"
						value="Nueva Tarea" />
					</div>
				</div>
				
			</s:form>
			
		</div>
		</div>
	</div>
</body>
	</html>
</jsp:root>