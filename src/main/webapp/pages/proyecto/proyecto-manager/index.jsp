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
					<s:property value="%{getText('CUP1_TITLE')}" />
				</h1>
			</div>

			<div class="row form-group">
				<div class="col-md-8 col-md-offset-2">
					<s:actionerror theme="%{varTheme}" />
					<s:actionmessage theme="%{varTheme}" />
				</div>
			</div>


			<div class="col-sm-12 text-left">
				<table id="tblTareas"
					class="table table-bordered table-hover table-condensed bg-1 table-responsive">
					<thead>
						<tr>
							<th><s:text name="CUP1_THEAD1" /></th>
							<th><s:text name="CUP1_THEAD2" /></th>
							<th><s:text name="CUP1_THEAD3" /></th>
							<th><s:text name="CUP1_THEAD4" /></th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="listProyecto" var="pro">
							<tr>
								<td><s:property value="#pro.nombre" /></td>
								<td><s:date var="fhInicio" format="dd/MMM/yy"
										name="#pro.inicio" /> <s:property value="#fhInicio" /></td>
								<td><s:date var="fhFin" format="dd/MMM/yy" name="#pro.fin" />
									<s:property value="#fhFin" /></td>
								<td><a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/show">
										<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
								</a> <a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/inicio/">
										<s:property value="''" /> <i class="material-icons">&#xE872;</i>
								</a> <a class=""
									href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas/new">
										<s:property value="''" /> <i class="material-icons">&#xE150;</i>
								</a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
			<!-- Registrar proyecto -->
			<div class="form-group">
				<a class="btn btn-default btn-danger"
					href="${#pageContext.request.contextPath}/sgps-enmaquetado/proyecto/proyecto-manager/new">
					<s:property value="%{getText('mx.ipn.escom.boton.registrar')}" />
				</a>
			</div>
		</div>
	</div>
</body>
	</html>
</jsp:root>