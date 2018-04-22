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
		<div class="row content">
			<s:form theme="bootstrap">
				<div class="col-md-6 col-md-offset-3 ">
					<fieldset class="form form-group form-horizontal">
						<legend class="form-section">
							<s:text name="Invitar Colaborador" />
						</legend>
						<div class="row">
							
							<div class="form-group">
								<s:select class="form-control"
									list="#{'1':'Banco','2':'Nomina'}" label="Proyectos"
									name="Area" />
							</div>
							<div class="form-group">
								<s:select class="form-control"
									list="#{'1':'Programador','2':'Analista'}" label="Rol"
									name="Area" />
							</div>
							<div class="form-group">
								<s:textfield class="form-control" label="Correo" name="correo" type="email" placeholder="email@mail.com"/>
							</div>
						</div>
					</fieldset>
					<s:submit cssClass="btn btn-primary" value="Invitar" />
					<a class="btn btn-default btn-danger"
						href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/invitacion/">
						<s:property value="'Regresar'" />
					</a>
				</div>
			</s:form>
		</div>
	</div>

</body>
</html>
</jsp:root>
