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
	<div class="col-md-12">
		<h1 class="title">
			<s:property value="'Iniciar Sesión'" />
		</h1>
	</div>

	<div class="row form-group">
		<div class="col-md-8 col-md-offset-2">
			<s:actionerror theme="%{varTheme}" />
			<s:actionmessage theme="%{varTheme}" />
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<s:form id="frmLogin" method="post" theme="simple"
				cssClass="form form-horizontal form-medium"
				action="%{#pageContext.request.contextPath}/controlacceso/iniciar-sesion!iniciarSesion">
				<!-- USUARIO -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="'Login'" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<s:textfield cssClass="form-control campo"
							cssClassError="input-error" name="model.login" id="txUsuario" />
						<s:fielderror fieldName="login" cssClass="error"
							theme="%{#varTheme}" />
					</div>
				</div>
				<!-- CONTRASEÑA -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio"><s:property
							value="'Password'" /> </label>
					<div class="col-xs-12 col-sm-8 col-md-8 ">
						<s:password cssClass="form-control campo" name="model.password"
							cssClassError="input-error" id="txUsuario" />
						<s:fielderror fieldName="password" cssClass="error"
							theme="%{#varTheme}" />
					</div>
				</div>
				<!-- BOTON ACEPTAR -->
				<div class="form-group">
					<s:submit cssClass="btn btn-default btn-default-eld"
						value="aceptar" />
				</div>
				<!-- ENLACES PARA RECUPERAR CONTRASEÑA Y CREAR CUENTA -->
				<div class="form-group center">
					<div class="row">
						<div class="col-md-12 center">
							<s:property value="'¿No tienes una cuenta?,crea una '" />
							<a href="${#pageContext.request.contextPath}/sgps-desarrollo/controlacceso/iniciar-sesion/new"><s:property
									value="'aquí'" /></a>
						</div>
					</div>
				</div>
			</s:form>
		</div>
	</div>
</body>
	</html>
</jsp:root>