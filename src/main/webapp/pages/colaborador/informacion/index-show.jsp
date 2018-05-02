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
					<s:property value="%{getText('CUP8_TITLE')}" />
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
					<s:text name="CUP8_SUBTITLE" />
			</legend>
			<s:form id="frmLogin" method="post" theme="simple"
				action="">
				
			<!-- Nombre -->
			<div class="form-group col-sm-4">
					<label
						class="col-xs-2 col-sm-5 col-md-5 control-label label-obligatorio">
						<s:property value="%{getText('CUP8_LBL1')}" />
					</label>
					<div class="col-xs-12 col-sm-7 col-md-7 text-left">
						<s:property value="'Pablo'" />
					</div>
			</div>
				
			<!-- Apellido Paterno -->
			<div class="form-group col-sm-4">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP8_LBL2')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Garcia'" />
					</div>
			</div>
				
			<!-- Apellido Materno -->
			<div class="form-group col-sm-4">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP8_LBL3')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Garcia'" />
					</div>
			</div>
			
			<!-- Ultimo grado de estudio -->
			<div class="form-group col-sm-6">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP8_LBL4')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Universidad'" />
					</div>
			</div>
			
			<!-- Desempeño -->
			<div class="form-group col-sm-6">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label label-obligatorio">
						<s:property value="%{getText('CUP8_LBL5')}" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8 text-left">
						<s:property value="'Bueno'" />
					</div>
			</div>
			
			<!-- Conocimientos -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio">
						<s:property value="%{getText('CUP8_LBL6')}" />
					</label>
					<div class="col-xs-12 col-sm-10 col-md-10 text-left">
						<s:property value="'Conocimiento1,Conocimiento2,Conocimiento3'" />
					</div>
			</div>
				
			
			
			<!-- Descripcion -->
			<div class="form-group col-sm-12">
					<label
						class="col-xs-2 col-sm-2 col-md-2 control-label label-obligatorio">
						<s:property value="%{getText('CUP8_LBL7')}" />
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