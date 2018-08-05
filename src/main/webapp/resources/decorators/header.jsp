<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />

	<!-- Variables -->
	<s:set var="usuario"
		value="%{#session[@mx.ipn.escom.sgps.util.NombreObjetosSesion@USUARIO_SESION]}" />

	<!-- Navigation -->
	<nav class="navbar navbar-fixed-top navbar-personalizado"
		role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<div style="float: left; width: 35px; margin-left: 20px;">
				<a
					href="${pageContext.request.contextPath}/controlacceso/bienvenida/new">
					<img
					src="${pageContext.request.contextPath}/resources/images/escom1.png"
					class="logo" />
				</a>
			</div>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <i
					class="material-icons md-12 md-light">&#xE5D2;</i>
			</button>
		</div>

		<s:if test="#usuario neq null">
			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i
						class="material-icons md-18 md-light">&#xE7FD;</i>
				</a>
					<ul class="dropdown-menu dropdown-messages">
						<li><label><s:text name="Usuario:"></s:text></label>
						<s:property value="' '+#usuario" /></li>
						<li><a href="#">Perfil de usuario</a></li>
						<li><a href="#">Cuenta</a></li>
						<li><a
							href="${pageContext.request.contextPath}/controlacceso/iniciar-sesion!terminarSesion">Cerrar
								Sesión</a></li>
					</ul></li>
			</ul>
			<s:include value="./menu/liderProyecto.jsp" />
		</s:if>
	</nav>
</jsp:root>