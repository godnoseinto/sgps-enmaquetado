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
					<s:property value="%{getText('CUP3_TITLE')}" />
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
					<s:text name="CUP3_SUBTITLE" />
				</legend>

				<!-- Nombre proyecto -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP3_LBL1')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<s:textfield cssClass="form-control campo"
							cssClassError="input-error" name="model.login" id="txUsuario"  value="Proyecto Dos"/>
						<s:fielderror fieldName="login" cssClass="error"
							theme="%{#varTheme}" />
					</div>
				</div>

				<!-- Nombre proyecto -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP3_LBL2')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Carla Sanchez Vera'" />
					</div>
				</div>

				<!-- Fecha Inicio -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP3_LBL3')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<sj:datepicker id="dpInicio" name="model.fechaEntrada"
							cssClass="form-control date-picker" showOn="focus"
							displayFormat="%{getText('mx.edu.eld.jsFormatDate')}"
							inputAppendIcon="calendar" changeYear="true" changeMonth="true"
							readonly="true" showAnim="fadeIn" parentTheme="bootstrap" value="02/may/2018"/>
					</div>
				</div>

				<!-- Fecha Término -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP3_LBL4')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<sj:datepicker id="dpInicio" name="model.fechaEntrada"
							cssClass="form-control date-picker" showOn="focus"
							displayFormat="%{getText('mx.edu.eld.jsFormatDate')}"
							inputAppendIcon="calendar" changeYear="true" changeMonth="true"
							readonly="true" showAnim="fadeIn" parentTheme="bootstrap" value="02/may/2023"/>
					</div>
				</div>

				<!-- Fecha Inicio -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP3_LBL5')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<s:textarea cols="60" value="esta es una descripcion de prueba"/>
					</div>
				</div>
				
				<!-- Estado -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP3_LBL6')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<s:select id="slcListEstadoProyecto" list="#{'1':'Creado','2':'En progreso','3':'Pausado','4':'Cancelado','5','Finalizado'}"
							cssClass="form-control" cssErrorClass="field-error" />
						<s:fielderror fieldName="model.idTipo" cssClass="error"
							theme="%{#theme}" />
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