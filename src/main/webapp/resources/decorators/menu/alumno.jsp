<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />

	<s:set var="ttbProcesoAdmision"
		value="%{getText('menu.aspirante.proceso_admision')}" />
	<s:set var="ttbInscripciones"
		value="%{getText('menu.aspirante.incripciones')}" />
	<s:set var="ttbEvaluaciones"
		value="%{getText('menu.aspirante.evaluaciones')}" />
	<s:set var="ttbEgresados"
		value="%{getText('menu.aspirante.egresados')}" />
	<s:set var="ttbEntrevistas"
		value="%{getText('menu.aspirante.entrevistas')}" />
	<s:set var="ttbReinscripcion"
		value="%{getText('menu.aspirante.reinscripcion')}" />

	<ul class="nav navbar-nav">

		<!-- Proceso de Admisión -->
		<li class="dropdown"><a title="${ttbProcesoAdmision}"
			data-toggle="dropdown" class="dropdown-toggle" href="${pageContext.request.contextPath}/admision/gestionar-aspirantes/1/edit"
			aria-expanded="false"><s:text
					name="menu.aspirante.proceso_admision" /></a></li>
		<!-- Inscripciones -->
		<li class="dropdown"><a title="${ttbInscripciones}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text name="menu.aspirante.incripciones" /></a></li>
		<!-- Evaluaciones -->
		<li class="dropdown"><a title="${ttbEvaluaciones}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text name="menu.aspirante.evaluaciones" /></a></li>

		<!-- Egresados -->
		<li class="dropdown"><a title="${ttbEgresados}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text name="menu.aspirante.egresados" /></a></li>

		<!-- Entrevistas -->
		<li class="dropdown"><a title="${ttbEntrevistas}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text name="menu.aspirante.entrevistas" /></a></li>

		<!-- Reinscripción -->
		<li class="dropdown"><a title="${ttbReinscripcion}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text name="menu.aspirante.reinscripcion" /><b
				class="caret"> <!-- no borrar este comentario --></b></a>
			<ul class="dropdown-menu">
				<!-- Realizar Reinscripción -->
				<li><a href="#"><s:text
							name="menu.aspirante.reinscripcion.realizar_reinscripcion" /></a></li>
				<!-- Comprobante de Inscripción -->
				<li><a href="#"><s:text
							name="menu.aspirante.reinscripcion.comprobante_inscripcion" /></a></li>
			</ul></li>

	</ul>
</jsp:root>