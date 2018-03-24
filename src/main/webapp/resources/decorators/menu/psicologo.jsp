<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />
	<s:set var="ttbPsicometrico"
		value="%{getText('menu.psicologo.examen_psicometrico')}" />

	<ul class="nav navbar-nav">
		<li class="dropdown"><a title="${ttbPsicometrico}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.psicologo.examen_psicometrico" /><b class="caret">
					<!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<li><a
					href="${pageContext.request.contextPath}/psicometrico/gestionar-entrevista"><s:text
							name="menu.psicologo.entrevista_psicometrico" /></a></li>

				<li><a
					href="${pageContext.request.contextPath}/psicometrico/gestionar-evaluacion?idUsuario=2"><s:text
							name="menu.psicologo.evaluacion_psicometrico" /></a></li>
			</ul></li>
	</ul>
</jsp:root>