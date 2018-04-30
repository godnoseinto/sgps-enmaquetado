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
	<div class="container-fluid text-center">
			<s:form theme="bootstrap" cssClass="form-horizontal" label="Invitar Colaborador">
								<s:select class="form-control"
									list="#{'1':'Banco','2':'Nomina'}" label="Proyectos"
									name="Area" />
								<s:select class="form-control"
									list="#{'1':'Programador','2':'Analista'}" label="Rol"
									name="Area" />
							  	<s:textfield class="form-control" label="Correo" name="correo" type="email" placeholder="email@mail.com"/>
		<div class="col-md-offset-3">
		<table class="table table-bordered table-hover tablecondensed bg-1 table-responsive">
			<thead>
				<tr>
					<th scope="col">Nombre</th>
					<th scope="col">Correo</th>
					<th scope="col">Acción</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				<td>Manuel<i class="icon-blue material-icons"  style="color:green" >&#xE061;</i></td>
				<td>manuel@mail.com</td>
				<td><i class="material-icons">&#xE163;</i></td>
				</tr>
				<tr>
				<td>Cristian<i class="icon-blue material-icons"  style="color:yellow" >&#xE061;</i></td>
				<td>cristian@mail.com</td>
				<td><i class="material-icons">&#xE163;</i></td>
				</tr>
				<tr>
				<td>Jesús<i class="icon-blue material-icons"  style="color:red" >&#xE061;</i></td>
				<td>jesus@mail.com</td>
				<td><i class="material-icons">&#xE163;</i></td>
				</tr>
			</tbody>
		</table></div>
					<s:submit cssClass="btn btn-primary" value="Invitar" />
					<a class="btn btn-default btn-danger"
						href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/invitacion/">
						<s:property value="'Regresar'" />
					</a>
			</s:form>
</div>

</body>
</html>
</jsp:root>
