<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />
	<nav role="navigation"
		class="navbar navbar-fixed-top navbar-collapse navbar-personalizado">
		<div class="container">
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!--  <a class="navbar-brand page-scroll" href=""><s:property
						value="getText('com.sprach.globalName')" /></a>-->
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<s:set var="usuario"
					value="%{#session[@mx.ipn.escom.sgps.util.NombreObjetosSesion@USUARIO_SESION]}" />
				<s:set var="LP"
					value="%{@mx.ipn.escom.sgps.controlacceso.mapeo.PerfilUsuarioEnum@LIDER_PROYECTO.getIdPerfil()}" />
				--${usuario.idPerfilActivo}--

				<s:if test="#usuario eq 'alumno'">
					<s:include value="./menu/alumno.jsp" />
				</s:if>
				<s:elseif test="#usuario.idPerfilActivo eq #LP">
					<s:include value="./menu/liderProyecto.jsp" />
				</s:elseif>

				<s:if test="#usuario neq null">
					<ul class="nav navbar-top-links navbar-right">
						<li class="dropdown"><a href="#"> <i
								class="material-icons md-18 md-light">&#xE7FD;</i>
						</a>
							<ul class="dropdown-menu dropdown-messages">
								<li><s:property value="#usuario"/></li>
								<li><a href="#">Perfil de usuario</a></li>
								<li><a href="#">Cuenta</a></li>
								<li><a
									href="${pageContext.request.contextPath}/controlacceso/iniciar-sesion!terminarSesion">Cerrar
										Sesión</a></li>
							</ul></li>
					</ul>
				</s:if>
			</div>
			<!-- /.navbar-collapse -->
		</div>


		<!-- /.container -->
	</nav>
</jsp:root>