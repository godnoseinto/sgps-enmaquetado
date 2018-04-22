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
	  <h2>Bienvenido José Manuel</h2> 
	  <h5>Tareas Asignadas</h5>
	  
	  <table class="table table-bordered table-hover table-condensed bg-1 table-responsive">
	    <thead>
	      <tr>
	        <th scope="col">Nombre</th>
	        <th scope="col">Descripción</th>
	        <th scope="col">Prioridad</th>
	        <th scope="col">Acciones</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>Login</td>
	        <td>Programar el login con las validaciones necesarias</td>
	        <td>Media</td>
	        <td>
			<a class="" 
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
			<s:property value="''" />
	  		<i class="material-icons">&#xE037;</i>
	  		</a>
			<a class="" 
			href="">
			<s:property value="''" />
			<i class="material-icons">&#xE034;</i>
	  		</a>
			<a class="" 
			href="">
			<s:property value="''" />
			<i class="material-icons">&#xE047;</i>
	  		</a>
			</td>
	      </tr>	
	      <tr>
	        <td>Registro</td>
	        <td>Programar el registro y el envío de correo confirmación</td>
	        <td>Baja</td>
	        <td>
			<a class="" 
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
			<s:property value="''" />
	  		<i class="material-icons">&#xE037;</i>
	  		</a>
			<a class="" 
			href="">
			<s:property value="''" />
			<i class="material-icons">&#xE034;</i>
	  		</a>
			<a class="" 
			href="">
			<s:property value="''" />
			<i class="material-icons">&#xE047;</i>
	  		</a>
			</td>
	      </tr>     
	    </tbody>
	  </table> 
	     
	    <div class="row">
	    <div class="col-md-3">
	    	 <s:label value="Tiempo"/>
	    </div>
	    <div class="col-md-8">
	     <div class="progress">
  			<div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">1.5 hrs</div>
		</div>
	     </div>
	     </div>
	     
	     
	     
	     
	     
	     
	     
	           
	  
	  
	  <a class="btn btn-default btn-primary" 
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio">
			<s:property value="'Finalizar Tarea'" />
	  </a>
	  
</div>
	

</body>
	</html>
</jsp:root>