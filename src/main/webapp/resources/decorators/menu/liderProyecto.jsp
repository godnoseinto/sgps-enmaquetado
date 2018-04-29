<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />
	<s:set var="ttbProcesoAdmision"
		value="%{getText('menu.coordinacion.proceso_admision')}" />
	<s:set var="ttbEntrevista"
		value="%{getText('menu.coordinacion.entrevistas')}" />
	<s:set var="ttbGestionAcademica"
		value="%{getText('menu.coordinacion.gestion_academica')}" />
	<s:set var="ttbEstructuracionAcademica"
		value="%{getText('menu.coordinacion.estructuración_academica')}" />
	<s:set var="ttbReinscripcion"
		value="%{getText('menu.coordinacion.reinscripcion')}" />
	<s:set var="ttbInscripciones"
		value="%{getText('menu.coordinacion.inscripciones')}" />

	<ul class="nav navbar-nav">
		<!-- Ciclo escolar -->
		<li class="dropdown"><a title="${ttbCicloEscolar}"
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/proyecto/proyecto-manager"
			aria-expanded="false"><s:text name="menu.lider_proyecto.proyecto" /><b
				class="caret"> <!--  --></b></a></li>
		<li class="dropdown"><a title="${ttbCicloEscolar}"
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/colaboradores"
			aria-expanded="false"><s:text
					name="menu.lider_proyecto.colaborador" /><b class="caret"> <!--  --></b></a>
		</li>
		<li class="dropdown"><a title="${ttbCicloEscolar}"
			href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/invitacion"
			aria-expanded="false"><s:text
					name="menu.lider_proyecto.invitacion" /><b class="caret"> <!--  --></b></a>
		</li>
	</ul>
</jsp:root>