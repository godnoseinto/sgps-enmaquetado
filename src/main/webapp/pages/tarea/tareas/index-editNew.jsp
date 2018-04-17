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
  
	  	
	    
	    <div class="col-sm-6 text-left"> 
			<h1>Editar tarea</h1>
			
		</div>
		<div class="col-sm-6 text-center"> 
			<h3>Herramientas</h3>
			<s:form id="frmLogin" method="post" theme="simple"
				cssClass="form form-horizontal form-medium"
				action="">
				<!-- Tarea -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label">
						<s:property value="'Nombre'" />
					</label>
					<div class="col-xs-12 col-sm-8 col-md-8">
						<s:textfield cssClass="form-control campo"
							cssClassError="input-error" name="model.nombreT" id="txTarea" />
						<s:fielderror fieldName="tarea" cssClass="error"
							theme="%{#varTheme}" />
					</div>
				</div>
				<!-- Inicio de la actividad -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label"><s:property
							value="'Inicio de la actividad'" /> </label>
					<div class="col-xs-12 col-sm-8 col-md-8 ">
					
					
	                  <sj:datepicker value="today" id="dpkInicio" name="cuentaSel.inicio" displayFormat="dd.mm.yy" 
					  label="Today" 
					  cssClass="form-control date-picker" 
					  showOn="focus"
					   changeYear="true" changeMonth="true" inputAppndIcon="calendar"
					   readonly="true" showAnim="fadeIn" minDate="+1y"/>
					</div>
				</div>
				<!-- Fin de la actividad -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label"><s:property
							value="'Fin de la actividad'" /> </label>
					<div class="col-xs-12 col-sm-8 col-md-8 ">
					
					
	                  <sj:datepicker value="today" id="dpkFin" name="cuentaSel.fin" displayFormat="dd.mm.yy" 
					  label="Today" 
					  cssClass="form-control date-picker" 
					  showOn="focus"
					   changeYear="true" changeMonth="true" inputAppndIcon="calendar"
					   readonly="true" showAnim="fadeIn" minDate="+1y"/>
					</div>
				</div>
				
				<!-- Integrantes -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label"><s:property
							value="'Integrantes'" /> </label>
				</div>
				<div class="form-group">
					<div class="col-xs-12 col-sm-4 col-md-4 ">
						<s:textarea cssClass="form-control campo" name="model.Descripcion" value="Juan"
							cssClassError="input-error" id="txTarea" />
						<s:fielderror fieldName="descripcion" cssClass="error"
							theme="%{#varTheme}" />
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 ">
						<s:submit cssClass="btn btn-default"
						value="Aceptar" />
						<s:submit cssClass="btn btn-default"
						value="Eliminar" />
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 ">
						<s:textarea cssClass="form-control campo" name="model.Descripcion"
							cssClassError="input-error" id="txTarea" />
						<s:fielderror fieldName="descripcion" cssClass="error"
							theme="%{#varTheme}" />
					</div>
				</div>
				
				<!-- Prioridad -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label"><s:property
							value="'Prioridad'" /> </label>
					<div class="col-xs-12 col-sm-8 col-md-8 ">
						<select name="prioridad">
						  <option>Alta</option>
						  <option>Media</option>
						  <option>Baja</option>
						</select>
					</div>
				</div>
				<!-- Descripcion -->
				<div class="form-group">
					<label
						class="col-xs-2 col-sm-4 col-md-4 control-label"><s:property
							value="'Descripcion'" /> </label>
					<div class="col-xs-12 col-sm-8 col-md-8 ">
						<s:textarea cssClass="form-control campo" name="model.Descripcion"
							cssClassError="input-error" id="txTarea" />
						<s:fielderror fieldName="descripcion" cssClass="error"
							theme="%{#varTheme}" />
					</div>
				</div>
				
				<!-- BOTON ACEPTAR -->
				<div class="form-group">
					<s:submit cssClass="btn btn-primary"
						value="aceptar" />
				</div>
				
			</s:form>
			
		</div>
	</div>
</div>
</body>
	</html>
</jsp:root>