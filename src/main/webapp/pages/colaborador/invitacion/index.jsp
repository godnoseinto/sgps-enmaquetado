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
		<h2>Agregar Colaborador</h2>
		<table class="table table-bordered table-hover tablecondensed bg-1 table-responsive">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Nombre</th>
					<th scope="col">Correo</th>
					<th scope="col">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<td>1</td>
				<td>Raul</td>
				<td>raul@mail.com</td>
				<td>
					<a>
						<s:property value="" />
						<i class="material-icons">&#xE7FE;</i>
					</a>
				</td>
			</tbody>
		</table>
	  	<a class="btn btn-default btn-primary" 
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/new">
			<s:property value="'Regresar'" />
	  </a>
	</div>
</body>
	</html>
</jsp:root>