<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />
	<s:set var="ttbCicloEscolar"
		value="%{getText('menu.secretaria_administracion.ciclo_escolar')}" />
	<s:set var="ttbProcesoAdmision"
		value="%{getText('menu.secretaria_administracion.proceso_admision')}" />
	<s:set var="ttbEntrevista"
		value="%{getText('menu.coordinacion.entrevistas')}" />
	<s:set var="ttbGestionAcademica"
		value="%{getText('menu.secretaria_administracion.gestion_academica')}" />
	<s:set var="ttbEstructuracionAcademica"
		value="%{getText('menu.secretaria_administracion.estructuracion_academica')}" />

	<ul class="nav navbar-nav">
		<!-- Ciclo escolar -->
		<li class="dropdown"><a title="${ttbCicloEscolar}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.asistente_secretaria_administracion.ciclo_escolar" /><b
				class="caret"> <!--  --></b></a>
			<ul class="dropdown-menu">
				<!-- Gestionar Ciclos Escolares -->
				<li><a
					href="${pageContext.request.contextPath}/calendario/gestionar-ciclos">
						<s:text
							name="menu.asistente_secretaria_administracion.calendario_academico" />
				</a></li>
				<!-- Gestionar Convocatoria de Ingreso -->
				<li><a
					href="${pageContext.request.contextPath}/convocatoria/gestionar-convocatoria">
						<s:text name="menu.coordinacion.convocatoria" />
				</a></li>
			</ul></li>
		<!-- Proceso de admision -->
		<li class="dropdown"><a title="Proceso de Admisión"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.secretaria_administracion.proceso_admision" /><b
				class="caret"> <!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- Seleccion de aspirantes seleccionados -->
				<li><a
					href="${pageContext.request.contextPath}/admision/aspirantes-aceptar"
					class="dropdown-toggle" data-toggle="dropdown"><s:text
							name="menu.secretaria_administracion.aspirantes_aceptados" /></a></li>
			</ul></li>
		<!-- Entrevistas -->
		<li class="dropdown"><a title="${ttbEntrevista}"
			data-toggle="dropdown" class="dropdown-toggle" href=""
			aria-expanded="false"><s:text
					name="menu.secretaria_administracion.entrevistas" /><b
				class="caret"> <!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- Gestionar Aplicacion de entrevistas -->
				<li><a
					href="${pageContext.request.contextPath}/entrevistas/gestionar-entrevistas"><s:text
							name="menu.coordinacion.gestionar_aplicacion_entrevistas" /></a></li>
				<!-- Resultados Entrevistas -->
				<li><a
					href="${pageContext.request.contextPath}/entrevistas/gestionar-entrevistas!resultados"><s:text
							name="menu.coordinacion.resultados_entrevistas" /></a></li>
			</ul></li>
		<!-- Gestión Academica -->
		<li class="dropdown"><a title="${ttbGestionAcademica}"
			data-toggle="dropdown" class="dropdown-toggle" href=""
			aria-expanded="false"><s:text
					name="menu.secretaria_administracion.gestion_academica" /><b
				class="caret"> <!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- Profesores -->
				<li class="dropdown-submenu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><s:text
							name="menu.secretaria_administracion.profesores" /></a>
					<ul class="dropdown-menu">
						<!-- Gestionar Profesores -->
						<li><a
							href="${pageContext.request.contextPath}/profesor/gestionar-profesor"><s:text
									name="menu.secretaria_administracion.gestionar_profesores" /></a></li>
						<!-- Cargar Archivos de Identidad -->
						<li><a href="#"><s:text
									name="menu.secretaria_administracion.cargar_archivos_de_identidad" /></a></li>
					</ul></li>
			</ul></li>
		<!-- Estructuración Académica -->
		<li class="dropdown"><a title="${ttbEstructuracionAcademica}"
			data-toggle="dropdown" class="dropdown-toggle" href=""
			aria-expanded="false"><s:text
					name="menu.secretaria_administracion.estructuracion_academica" /><b
				class="caret"> <!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- Gestionar plan de estudios -->
				<li><a
					href="${pageContext.request.contextPath}/estructura-academica/gestionar-plan-estudios"><s:text
							name="menu.secretaria_administracion.gestionar_plan_estudios" /></a></li>
				<!-- Gestionar equivalencias -->
				<li><a
					href="${pageContext.request.contextPath}/planestudios/gestionar-equivalencia"><s:text
							name="menu.secretaria_administracion.gestionar_equivalencias" /></a></li>
			</ul></li>
	</ul>
</jsp:root>