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
		<div class="container">
	  <h2>Mis Colaboradores</h2> 
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-4 col-md-auto">
	    	 <s:label value="Nombre: Manuel Cordero"/><br />
	    	 <s:label value="Rol: Programador"/>
		</div>
		<div class="col-md-8">
							<table id="tblTareas" class="table table-bordered table-hover table-condensed bg-1 table-responsive">
					<thead>
						<tr>

							<th>Tarea</th>

							<th>Prioridad</th>

							<th>Status</th>

							<th>Acciones</th>

						</tr>
					</thead>
					<tbody>
						<tr>

							<td>Analisis de datos</td>


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
						  		
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareasnueva/new">
								   <s:property value="''" />
								   <i class="material-icons">&#xE7FE;</i>
						  		</a>
								</td>

						</tr>
						<tr>

							<td>Planeacion de la base de datos</td>


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
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareasnueva/new">
								   <s:property value="''" />
								   <i class="material-icons">&#xE7FE;</i>
						  		</a>
							</td>

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
			
	</div>
	</div>
	</div>
</body>
	</html>
</jsp:root>