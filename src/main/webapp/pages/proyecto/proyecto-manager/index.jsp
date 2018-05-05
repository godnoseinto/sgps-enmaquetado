<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:s="/struts-tags" xmlns:sj="/struts-jquery-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Head -->
<jsp:text>
	<![CDATA[
		<script type="text/javascript" src="${pageContext.request.contextPath}/pages/proyecto/proyecto-manager/js/index.js"></script>
	]]>
</jsp:text>
</head>
<body>
	<!-- Body -->
	<!-- variables -->
	<s:set var="listProyectos"
		value="{{'ProyectoUno','Colaborador','01/04/2018','15/04/2023','En progreso','5','1','1'},{'ProyectoDos','lider','01/04/2019','15/04/2023','Pausado','15','2','2'},{'ProyectoTres','lider','01/04/2018','15/04/2022','Creado','0','3','2'}}"></s:set>

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
				<table id="tblProyectos"
					class="table table-bordered table-hover table-condensed bg-1 table-responsive">
					<thead>
						<tr>
							<th><s:text name="CUP1_THEAD1" /></th>
							<th><s:text name="CUP1_THEAD2" /></th>
							<th><s:text name="CUP1_THEAD3" /></th>
							<th><s:text name="CUP1_THEAD4" /></th>
							<th><s:text name="CUP1_THEAD5" /></th>
							<th><s:text name="CUP1_THEAD6" /></th>
							<th><s:text name="CUP1_THEAD7" /></th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="listProyectos" var="pro">
							<tr>
								<td><s:property value="#pro[0]" /></td>
								<td><s:property value="#pro[1]" /></td>
								<td><s:property value="#pro[2]" /></td>
								<td><s:property value="#pro[3]" /></td>
								<td><s:property value="#pro[4]" /></td>
								<td><s:property value="#pro[5]" /></td>
								<td><s:if test="%{#pro[6] eq '1' and #pro[7] eq '1'}">
										<a class=""
											href="${#pageContext.request.contextPath}/sgps-enmaquetado/proyecto/proyecto-manager/1/edit">
											<s:property value="''" /> <i class="material-icons">&#xE3E0;</i>
										</a>
									</s:if> <s:if
										test="%{#pro[6] eq '1' and (#pro[7] eq '2' or #pro[7] eq '3')}">
										<a class=""
											href="${#pageContext.request.contextPath}/sgps-enmaquetado/proyecto/proyecto-manager/1/edit">
											<s:property value="''" /> <i class="material-icons">&#xE150;</i>
										</a>
										<a class="" href="#"> <s:property value="''" /> <i
											class="material-icons">&#xE872;</i>
										</a>
										<a class=""
											href="${#pageContext.request.contextPath}/sgps-enmaquetado/proyecto/proyecto-manager/1">
											<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
										</a>
										<a class=""
											href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas">
											<s:property value="''" /> <i class="material-icons">&#xE8B8;</i>
										</a>
									</s:if> <s:if
										test="%{#pro[6] eq '2' and (#pro[7] eq '2' or #pro[7] eq '3')}">
										<a class=""
											href="${#pageContext.request.contextPath}/sgps-enmaquetado/proyecto/proyecto-manager/1/edit">
											<s:property value="''" /> <i class="material-icons">&#xE150;</i>
										</a>
										<a class=""
											href="${#pageContext.request.contextPath}/sgps-enmaquetado/proyecto/proyecto-manager/1">
											<s:property value="''" /> <i class="material-icons">&#xE8F4;</i>
										</a>
										<a class=""
											href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas">
											<s:property value="''" /> <i class="material-icons">&#xE8B8;</i>
										</a>

									</s:if> <s:if
										test="%{#pro[6] eq '3' and (#pro[7] eq '2' or #pro[7] eq '3')}">
										<a class=""
											href="${#pageContext.request.contextPath}/sgps-enmaquetado/proyecto/proyecto-manager/1/edit">
											<s:property value="''" /> <i class="material-icons">&#xE150;</i>
										</a>
										<a class="" href="#"> <s:property value="''" /> <i
											class="material-icons">&#xE8F4;</i>
										</a>
										<a class=""
											href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareas">
											<s:property value="''" /> <i class="material-icons">&#xE8B8;</i>
										</a><a class="" href="#"> <s:property value="''" /> <i
											class="material-icons">&#xE872;</i>
										</a>
									</s:if></td>
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