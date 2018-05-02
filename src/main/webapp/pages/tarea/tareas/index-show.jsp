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
					<s:property value="%{getText('CUP7_TITLE')}" />
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
					<s:text name="CUP7_SUBTITLE" />
			</legend>
			<s:form id="frmLogin" method="post" theme="simple"
				action="">
				
			<!-- Nombre tarea -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio text-left">
						<s:property value="%{getText('CUP7_LBL1')}" />
					</label>
					<div class="col-xs-12 col-sm-10 col-md-10 text-left">
						<s:property value="'Tarea dos'" />
					</div>
			</div>
			
			<!-- Autor -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL2')}" />
					</label>
					<div class="col-xs-12 col-sm-10 col-md-10 text-left">
						<s:property value="'Carla Sanchez Vera'" />
					</div>
			</div>
			
			<!-- Fecha Inicio -->
			<div class="form-group col-sm-6">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL3')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'2/mayo/2018'" />
					</div>
			</div>
				
			<!-- Fecha Término -->
			<div class="form-group col-sm-6">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL4')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'25/mayo/2018'" />
					</div>
			</div>
			<!-- Prioridad -->
			<div class="form-group col-sm-4">
					<label
						class="col-xs-2 col-sm-5 col-md-5 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL5')}" />
					</label>
					<div class="col-xs-12 col-sm-7 col-md-7 text-left">
						<s:property value="'Alta'" />
					</div>
			</div>
				
			<!-- Rol -->
			<div class="form-group col-sm-4">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL6')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Programador'" />
					</div>
			</div>
				
			<!-- Estatus -->
			<div class="form-group col-sm-4">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL7')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Pausado'" />
					</div>
			</div>
			
			<!-- Avance -->
			<div class="form-group col-sm-6">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL8')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'50%'" />
					</div>
			</div>
			
			<!-- Entregables -->
			<div class="form-group col-sm-6">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL9')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'20'" />
					</div>
			</div>
			
			<!-- Descripcion -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL10')}" />
					</label>
					<div class="col-xs-12 col-sm-10 col-md-10 text-left">
						<s:property value="'Manul,Cristian,Jesús'" />
					</div>
			</div>
				
			
			
			<!-- Descripcion -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio">
						<s:property value="%{getText('CUP7_LBL11')}" />
					</label>
					<div class="col-xs-12 col-sm-10 col-md-10 text-left">
						<s:property value="'Descripcion de la tarea'" />
					</div>
			</div>
				
				
			</s:form>
			</fieldset>
		</div>
	</div>
</div>
</body>
	</html>
</jsp:root>