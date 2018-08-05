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
<div class="container-fluid text-center">    
	<div class="row content">
  		<div class="col-md-12">
				<h1 class="title">
					<s:property value="%{getText('CUP5_TITLE')}" />
				</h1>
		</div>
		<div class="row form-group">
				<div class="col-md-8 col-md-offset-2">
					<s:actionerror theme="%{varTheme}" />
					<s:actionmessage theme="%{varTheme}" />
				</div>
		</div>
		
		
		<div class="col-sm-12 text-center" >
		<fieldset class="form form-horizontal form-medium">
			<legend class="form-section">
					<s:text name="CUP5_SUBTITLE" />
			</legend>
			<s:form id="frmLogin" method="post" theme="simple"
				action="">
				
			<!-- Nombre tarea -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio">
						<s:property value="%{getText('CUP5_LBL1')}" />
					</label>
					<div class="col-xs-12 col-sm-10 col-md-10">
						<s:textfield cssClass="form-control campo"
							cssClassError="input-error" name="model.nombreT" id="txTarea"  value=""/>
						<s:fielderror fieldName="login" cssClass="error"
							theme="%{#varTheme}" />
					</div>
			</div>
			
			<!-- Autor -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio">
						<s:property value="%{getText('CUP5_LBL2')}" />
					</label>
					<div class="col-xs-12 col-sm-10 col-md-10 text-left">
						<s:property value="'Carla Sanchez Vera'" />
					</div>
			</div>
			
			<!-- Fecha Inicio -->
			<div class="form-group col-sm-6">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP5_LBL3')}" />
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
			<div class="form-group col-sm-6">
			        <s:radio label="fechafin" name="fechafin" list="#{'1':'Fin'}" value="1" class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio"/>
					
					<div class="col-xs-12 col-sm-8 col-md-8">
						<sj:datepicker id="dpInicio" name="model.fechaEntrada"
							cssClass="form-control date-picker" showOn="focus"
							displayFormat="%{getText('mx.edu.eld.jsFormatDate')}"
							inputAppendIcon="calendar" changeYear="true" changeMonth="true"
							readonly="true" showAnim="fadeIn" parentTheme="bootstrap" value="02/may/2023"/>
					</div>
					<s:radio label="fechafin" name="fechafin" list="#{'2':'Duracion'}" value="2" class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio"/>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<s:select id="slcListPrioridadTarea" list="#{'1':'1','2':'2','3':'3'}"
							cssClass="form-control" cssErrorClass="field-error" />
						<s:fielderror fieldName="model.idTipo" cssClass="error"
							theme="%{#theme}" />
					</div>
			</div>
			<!-- Prioridad -->
			<div class="form-group col-sm-4">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP5_LBL5')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<s:select id="slcListPrioridadTarea" list="#{'1':'Alta','2':'Media','3':'Baja'}"
							cssClass="form-control" cssErrorClass="field-error" />
						<s:fielderror fieldName="model.idTipo" cssClass="error"
							theme="%{#theme}" />
					</div>
			</div>
				
			<!-- Rol -->
			<div class="form-group col-sm-4">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP5_LBL6')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<s:select id="slcListRolTarea" list="#{'1':'Programador','2':'Analista','3':'Desarrollador'}"
							cssClass="form-control" cssErrorClass="field-error" />
						<s:fielderror fieldName="model.idTipo" cssClass="error"
							theme="%{#theme}" />
					</div>
			</div>
				
			<!-- Estatus -->
			<div class="form-group col-sm-4">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP5_LBL7')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Creado'" />
					</div>
			</div>
			
			<!-- Dependencia -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP5_LBL9')}" />
					</label>
					<div class="col-xs-12 col-sm-4 col-md-4">
						<s:select id="slcListRolTarea" list="#{'1':'Sin dependencia','2':'Tarea1','3':'Tarea2','4':'Tarea3'}"
							cssClass="form-control" cssErrorClass="field-error" />
						<s:fielderror fieldName="model.idTipo" cssClass="error"
							theme="%{#theme}" />
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4">
						<s:select id="slcListRolTarea" list="#{'1':'Final -> Inicial','2':'Final -> Final','3':'Inicial -> Final','4':'Inicial -> Inicial'}"
							cssClass="form-control" cssErrorClass="field-error" />
						<s:fielderror fieldName="model.idTipo" cssClass="error"
							theme="%{#theme}" />
					</div>
			</div>
				
			<!-- Descripcion -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP5_LBL8')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<s:textarea cols="30" />
					</div>
			</div>
			</s:form>
			</fieldset>
			<!-- Botones de aceptar y cancelar -->
			<div class="outter-section form-medium">
				<div class="text-right col-md-12">
					<a class="btn btn-default btn-default-eld"
						href="${pageContext.request.contextPath}/tarea/tareas">
						<s:text name="mx.ipn.escom.boton.aceptar" />
					</a> <a class="btn btn-default btn-default-eld"
						href="${pageContext.request.contextPath}/tarea/tareas">
						<s:text name="mx.ipn.escom.boton.cancelar" />
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
	</html>
</jsp:root>