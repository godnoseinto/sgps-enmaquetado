<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />
	<s:set var="ttbEvaluaciones"
		value="%{getText('menu.entrevistador.evaluaciones')}" />
	<s:set var="ttbEntrevistas"
		value="%{getText('menu.entrevistador.entrevistas')}" />
	<ul class="nav navbar-nav">
	<!-- Evaluaciones -->
		<li class="dropdown"><a title="${ttbEvaluaciones}"
			data-toggle="dropdown" class="dropdown" href="#"
			aria-expanded="false"><s:text
					name="menu.entrevistador.evaluaciones" /></a></li>
		<li class="dropdown"><a title="${ttbEntrevistas}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.entrevistador.entrevistas" /><b class="caret"> <!--  --></b></a>
			<ul class="dropdown-menu">
				<!-- Gestionar Ciclos Escolares -->
				<li><a href="${pageContext.request.contextPath}/entrevistas/gestionar-entrevistas"> <s:text
							name="menu.entrevistador.entrevistas.gestionar_aplicacion_entrevistas" />
				</a></li>
				<!-- Gestionar Etapas -->
				<li><a href="${pageContext.request.contextPath}/entrevistas/gestionar-entrevistas!resultados"> <s:text
							name="menu.entrevistador.entrevistas.resultados_entrevistas" />
				</a></li>
			</ul></li>
	</ul>
</jsp:root>