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
	<!-- Body -->
 	<div class="container">
  <h2>Colaboradores</h2>           
  <table class="table table-responsive">
    <thead>
      <tr>
        <th scope="col">Id</th>
        <th scope="col">Nombre</th>
        <th scope="col">Correo</th>
        <th scope="col">Acciones</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Manuel</td>
		<td>manuel@mail.com</td>
        <td>
		<a class="" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
		<s:property value="''" />
  		<i class="material-icons">&#xE8F4;</i>
  		</a>
		<a class="" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
		<s:property value="''" />
		<i class="material-icons">&#xE872;</i>
  		</a>
		<a class="" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/1/edit">
		<s:property value="''" />
		<i class="material-icons">&#xE150;</i>
  		</a>
		</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Cristian</td>
		<td>cristian@mail.com</td>
        <td>
		<a class="btn btn-default btn-primary btn-sm" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio">
		<s:property value="''" />
  		<span class="glyphicon glyphicon-plus"></span>
  		</a>
		<a class="btn btn-default btn-primary btn-sm" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio">
		<s:property value="''" />
  		<span class="glyphicon glyphicon-minus"></span>
  		</a>
		<a class="btn btn-default btn-primary btn-sm" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/2/edit">
		<s:property value="''" />
  		<span class="glyphicon glyphicon-pencil"></span>
  		</a>
  		</td>
      </tr>
      <tr>
        <td>3</td>
        <td>Jesús</td>
		<td>jesus@mail.com</td>
        <td>
		<a class="btn btn-default btn-primary btn-sm" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio">
		<s:property value="''" />
  		<span class="glyphicon glyphicon-plus"></span>
  		</a>
		<a class="btn btn-default btn-primary btn-sm" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio">
		<s:property value="''" />
  		<span class="glyphicon glyphicon-minus"></span>
  		</a>
		<a class="btn btn-default btn-primary btn-sm" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/2/edit">
		<s:property value="''" />
  		<span class="glyphicon glyphicon-pencil"></span>
  		</a>
		</td>
      </tr>
    </tbody>
  </table>
</div>
	<a class="btn btn-default btn-primary" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio">
		<s:property value="'Agregar Colaborador'" />
  	</a><a class="btn btn-default btn-danger" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio">
		<s:property value="'Cancelar'" />
  	</a>

</body>
	</html>
</jsp:root>