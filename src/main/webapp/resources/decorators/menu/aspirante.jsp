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
	<ul class="nav navbar-nav">
		<li class="dropdown"><a title="${ttbProcesoAdmision}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text name="menu.aspirante.proceso_admision"/><b class="caret"> <!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- <li><a
					href="${pageContext.request.contextPath}/admision/realizar-registro/new">Realizar
						registro</a></li>
				<li><a
					href="${pageContext.request.contextPath}/admision/realizar-pago">Realizar
						pago</a></li> -->
				<li class="dropdown-submenu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><s:text name="menu.aspirante.examen_CENEVAL"/></a>
					<ul class="dropdown-menu">
						<!-- <li><a href="#">Responder Entrevista</a></li> -->
						<li><a href="${pageContext.request.contextPath}/ceneval/gestionar-folios-examen/2"><s:text name="menu.aspirante.visualizar_folio_aplicacion_examen_CENEVAL"/></a></li>
						<li><a href="${pageContext.request.contextPath}/ceneval/gestionar-resultados-examen/1"><s:text name="menu.aspirante.visualizar_resultados_EXAMEN"/></a></li>
					</ul></li>
			</ul></li>
		<li class="dropdown"><a title="${ttbInscripciones}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text name="menu.aspirante.incripciones"/></a></li>
		<li class="dropdown"><a title="${ttbEvaluaciones}"
			data-toggle="dropdown" class="dropdown-toggle" href=""
			aria-expanded="false"><s:text name="menu.aspirante.evaluaciones"/></a></li>
	</ul>
</jsp:root>