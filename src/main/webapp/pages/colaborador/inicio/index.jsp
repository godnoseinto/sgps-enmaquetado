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
        <th scope="col">Nombre</th>
        <th scope="col">Correo</th>
        <th scope="col">Acciones</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Manuel</td>
		<td>manuel@mail.com</td>
        <td>
		<button type="button" class="btn btn-primary btn-sm">
  		<span class="glyphicon glyphicon-plus"></span>	
		</button>
		<button type="button" class="btn btn-primary btn-sm" >
  		<span class="glyphicon glyphicon-minus"></span>	
		</button>
		<button type="button" class="btn btn-primary btn-sm"  >
  		<span class="glyphicon glyphicon-pencil"></span>	
		</button>
		</td>
      </tr>
      <tr>
        <td>Cristian</td>
		<td>cristian@mail.com</td>
        <td>
		<button type="button" class="btn btn-primary btn-sm" >
  		<span class="glyphicon glyphicon-plus"></span>	
		</button>
		<button type="button" class="btn btn-primary btn-sm" >
  		<span class="glyphicon glyphicon-minus"></span>	
		</button>
		<button type="button" class="btn btn-primary btn-sm"  >
  		<span class="glyphicon glyphicon-pencil"></span>	
		</button>
		</td>
      </tr>
      <tr>
        <td>Jesús</td>
		<td>jesus@mail.com</td>
        <td>
		<button type="button" class="btn btn-primary btn-sm" >
  		<span class="glyphicon glyphicon-plus"></span>	
		</button>
		<button type="button" class="btn btn-primary btn-sm" >
  		<span class="glyphicon glyphicon-minus"></span>	
		</button>
		<button type="button" class="btn btn-primary btn-sm"  >
  		<span class="glyphicon glyphicon-pencil"></span>	
		</button>
		</td>
      </tr>
    </tbody>
  </table>
</div>
<button type="button" class="btn btn-primary">Agregar Colaborador</button>
<button type="button" class="btn btn-primary">Regresar</button>

</body>
	</html>
</jsp:root>