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
			<table class="table table-bordered table-hover table-condensed bg-1 table-responsive">
	    <thead>
	      <tr>
	        <th scope="col">Nombre</th>
	        <th scope="col">Proyecto</th>
	        <th scope="col">Rol</th>
	        <th scope="col">Acciones</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>Manuel Cordero</td>
	        <td>Sistema Bancario</td>
			<td>Programador</td>
	        <td>
			<a class="" 
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/colaboradores/1">
			<s:property value="''" />
	  		<i class="material-icons">&#xE8F4;</i>
	  		</a>
			<a class="" 
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
			<s:property value="''" />
			<i class="material-icons">&#xE037;</i>
	  		</a>
			<a class="" 
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/1/edit">
			<s:property value="''" />
			<i class="material-icons">&#xE14B;</i>
	  		</a>
			</td>
	      </tr>
	      
	    </tbody>
	  </table>
	</div>
	</div>
</body>
	</html>
</jsp:root>