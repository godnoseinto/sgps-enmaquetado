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
		<h2>Invitaciones</h2>
		<table class="table table-bordered table-hover tablecondensed bg-1 table-responsive">
			<thead>
				<tr>
					<th scope="col">Proyecto</th>
					<th scope="col">Colaborador</th>
					<th scope="col">Correo</th>
					<th scope="col">Estatus</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				<td>Sistema Bancario</td>
				<td>Manuel</td>
				<td>manuel@mail.com</td>
				<td class="alert alert-info">Pendiente</td>
				</tr>
				<tr>
				<td>Sistema de Nomina</td>
				<td>Cristian</td>
				<td>cristian@mail.com</td>
				<td class="alert alert-success">Aceptada</td>
				</tr>
				<tr>
				<td>Sistema Bancario</td>
				<td>Jesús</td>
				<td>jesus@mail.com</td>
				<td class="alert alert-danger">Rechazada</td>
				</tr>
			</tbody>
		</table>
	  	<a class="btn btn-default btn-primary" 
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/invitacion/new">
			<s:property value="'Invitar Colaborador'" />
	  </a>
	</div>
</body>
	</html>
</jsp:root>