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
	<div class="col-md-6 col-offset-2">
	<fieldset 
			class="form form-group form-horizontal">
	<legend class="form-section"><s:text name="Colaborador"/></legend>
   <div class="row">
    <div class="form-group">
    <s:textfield
    		class="form-control"
            label="Nombre"
            name="nombre"/>
    </div>
   
    <div class="form-group">
    <s:textfield
    		class="form-control"
            label="Apellido Paterno"
            name="nombre"/>
    </div>
   
    <div class="form-group">
    <s:textfield
    		class="form-control"
            label="Apellido Materno"
            name="nombre"/>
    </div>
    
    <div class="form-group">
	<s:select 
    			class="form-control"
    			list="#{'1':'Gerente','2':'Colaborador'}"
				label="Rol"
				name="Rol"/>
	</div>
    <div class="form-group">
	<s:select 
    			class="form-control"
    		 	list="#{'1':'Ánalisis','2':'Sistemas'}"
				label="Área"
				name="Area"/>
	</div>
	<div class="form-group">
    <s:textfield
    			class="form-control"
            	label="Correo"
            	name="correo"/>
    </div>
	<s:submit cssClass="btn btn-primary" value="Guardar"/>
	<a class="btn btn-default btn-danger" 
		href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio">
		<s:property value="'Regresar'" />
  	</a>
  	</div>
	</fieldset>
	</div>
    </s:form>
    </div>
    </div>
</body>
</html>
</jsp:root>