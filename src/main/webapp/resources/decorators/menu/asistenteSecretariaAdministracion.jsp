<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />
	<s:set var="ttbCicloEscolar"
		value="%{getText('menu.asistente_secretaria_administracion.ciclo_escolar')}" />
	<s:set var="ttbProcesoAdmision"
		value="%{getText('menu.asistente_secretaria_administracion.proceso_admision')}" />
	<s:set var="ttbInscripciones"
		value="%{getText('menu.asistente_secretaria_administracion.incripciones')}" />
	<s:set var="ttbEvaluaciones"
		value="%{getText('menu.asistente_secretaria_administracion.evaluaciones')}" />
	<s:set var="ttbEgresados"
		value="%{getText('menu.asistente_secretaria_administracion.egresados')}" /><ul class="nav navbar-nav">
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
							name="menu.asistente_secretaria_administracion.gestionar_ciclos_escolares" />
				</a></li>
				<!-- Gestionar Etapas -->
				<li><a
					href="${pageContext.request.contextPath}/calendario/gestionar-etapa">
						<s:text
							name="menu.asistente_secretaria_administracion.gestionar_etapas" />
				</a></li>
				<!-- Calendario Escolar -->
				<li><a
					href="${pageContext.request.contextPath}/calendario/gestionar-calendario-academico">
						<s:text
							name="menu.asistente_secretaria_administracion.calendario_academico" />
				</a></li>
				<!-- Convocatoria -->
				<li><a
					href="${pageContext.request.contextPath}/convocatoria/gestionar-convocatoria">
						<s:text
							name="menu.asistente_secretaria_administracion.convocatoria" />
				</a></li>
			</ul></li>
	</ul>
</jsp:root>