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
			<div class="col-md-12">
				<h1 class="title">
					<s:property value="%{getText('CUP4_TITLE')}" />
				</h1>
			</div>

			<div class="row form-group">
				<div class="col-md-8 col-md-offset-2">
					<s:actionerror theme="%{varTheme}" />
					<s:actionmessage theme="%{varTheme}" />
				</div>
			</div>

			<fieldset class="form form-horizontal form-medium">
				<legend class="form-section">
					<s:text name="CUP4_SUBTITLE" />
				</legend>

				<!-- Nombre proyecto -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label">
						<s:property value="%{getText('CUP4_LBL1')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Proyecto Uno'"/>
						<s:fielderror fieldName="login" cssClass="error"
							theme="%{#varTheme}" />
					</div>
				</div>

				<!-- Nombre proyecto -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label">
						<s:property value="%{getText('CUP4_LBL2')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Carla Sanchez Vera'" />
					</div>
				</div>

				<!-- Fecha Inicio -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label">
						<s:property value="%{getText('CUP4_LBL3')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'02/may/2018'"/>
					</div>
				</div>

				<!-- Fecha Término -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label">
						<s:property value="%{getText('CUP4_LBL4')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'02/may/2023'"/>
					</div>
				</div>

				<!-- Fecha Inicio -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label">
						<s:property value="%{getText('CUP4_LBL5')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Esta es una descripción'"/>
					</div>
				</div>

			</fieldset>

			<!-- Botones de aceptar y cancelar -->
			<div class="outter-section form-medium">
				<div class="text-right col-md-12">
					<a class="btn btn-default btn-default-eld"
						href="${pageContext.request.contextPath}/proyecto/proyecto-manager">
						<s:text name="mx.ipn.escom.boton.aceptar" />
					</a> <a class="btn btn-default btn-default-eld"
						href="${pageContext.request.contextPath}/proyecto/proyecto-manager">
						<s:text name="mx.ipn.escom.boton.cancelar" />
					</a>
				</div>
			</div>

		</div>
	</div>
</body>
	</html>
</jsp:root>