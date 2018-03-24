<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />
	<s:set var="ttbCicloEscolar"
		value="%{getText('menu.calendario.ciclo_escolar')}" />
	<s:set var="ttbProcesoAdmision"
		value="%{getText('menu.calendario.proceso_admision')}" />
	<s:set var="ttbInscripciones"
		value="%{getText('menu.calendario.incripciones')}" />
	<s:set var="ttbEvaluaciones"
		value="%{getText('menu.calendario.evaluaciones')}" />
	<s:set var="ttbAccount" value="%{getText('menu.calendario.account')}" />
	<s:set var="usuario"
		value="%{#session[@mx.com.emeth.util.NombreObjetosSesion@USUARIO_SESION]}" />
	<nav role="navigation"
		class="navbar navbar-default navbar-fixed-top navbar-eld">
		<div class="container">
			<div class="navbar-header page-scroll">
				<div style="float: left; width: 45px; margin-left: 20px;">
					<img
						src="${pageContext.request.contextPath}/resources/images/logo.png"
						class="logo" />
				</div>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only"><s:text
							name="menu.calendario.toggle_navigation" /></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!--  <a class="navbar-brand page-scroll" href=""><s:property
						value="getText('com.sprach.globalName')" /></a>-->
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a title="${ttbCicloEscolar}"
						data-toggle="dropdown" class="dropdown-toggle" href="#"
						aria-expanded="false"><s:text
								name="menu.calendario.ciclo_escolar" /><b class="caret"> <!--  -->
						</b></a>
						<ul class="dropdown-menu">
							<li><a href="#"><s:text
										name="menu.calendario.gestionar_ciclos" /></a></li>
						</ul></li>
					<li class="dropdown"><a title="${ttbProcesoAdmision}"
						data-toggle="dropdown" class="dropdown-toggle" href="#"
						aria-expanded="false"><s:text
								name="menu.calendario.proceso_admision" /><b class="caret">
								<!--  -->
						</b></a>
						<ul class="dropdown-menu">
							<li><a
								href="${pageContext.request.contextPath}/general/gestionar-menu!students"><s:text
										name="menu.calendario.gestionar_registro_aspirantes" /></a></li>
						</ul></li>
					<li class="dropdown"><a title="${ttbInscripciones}"
						data-toggle="dropdown" class="dropdown-toggle" href=""
						aria-expanded="false"><s:text
								name="menu.calendario.inscripciones" /><b class="caret"> <!--  -->
						</b></a>
						<ul class="dropdown-menu">
							<li><a
								href="${pageContext.request.contextPath}/general/gestionar-menu!groupsAdministration"><s:text
										name="menu.calendario.groups_administration" /></a></li>
						</ul></li>
					<li class="dropdown"><a title="${ttbEvaluaciones}"
						data-toggle="dropdown" class="dropdown-toggle" href="#"
						aria-expanded="false"><s:text
								name="menu.calendario.evaluaciones" /><b class="caret"> <!--  -->
						</b></a>
						<ul class="dropdown-menu">
							<li><a
								href="${pageContext.request.contextPath}/general/gestionar-menu!books"><s:text
										name="menu.calendario.books_administration" /></a></li>
						</ul></li>
					<li class="dropdown"><a title="${ttbAccount}"
						data-toggle="Egresados" class="dropdown-toggle" href="#"
						aria-expanded="false"><s:text name="menu.calendario.account" /><b
							class="caret"> <!--  -->
						</b></a>
						<ul class="dropdown-menu">
							<!-- <li><a href="#">Check Account</a></li>  -->
							<li><a
								href="${pageContext.request.contextPath}/general/gestionar-menu!changePassword"><s:text
										name="menu.calendario.change_password" /></a></li>
						</ul></li>
					<li class="dropdown"><a
						href="${pageContext.request.contextPath}/general/gestionar-menu!logout"><s:text
								name="menu.calendario.logout" /></a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
</jsp:root>