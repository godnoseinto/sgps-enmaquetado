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
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.asistente_secretaria_administracion.ciclo_escolar" /><b
				class="caret"> <!--  --></b></a>
			<ul class="dropdown-menu">
				<!-- Gestionar Ciclos Escolares -->
				<li class="dropdown-submenu"><a
					href="#">
						<s:text
							name="menu.asistente_secretaria_administracion.calendario_academico" />
				</a>
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
					</ul></li>
				<!-- Gestionar Convocatoria de Ingreso -->
				<li><a
					href="${pageContext.request.contextPath}/convocatoria/gestionar-convocatoria">
						<s:text name="menu.coordinacion.convocatoria" />
				</a></li>
			</ul></li>

		<!-- Proceso de admisión -->
		<li class="dropdown"><a title="${ttbProcesoAdmision}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"> <s:text
					name="menu.coordinacion.proceso_admision" /> <b class="caret">
					<!--  -->
			</b>
		</a>
			<ul class="dropdown-menu">
				<!-- Gestionar Registro de Aspirantes -->
				<li><a
					href="${pageContext.request.contextPath}/admision/gestionar-aspirantes">
						<s:text name="menu.coordinacion.gestionar_registro_aspirantes" />
				</a></li>
				<li class="dropdown-submenu">
					<!-- Examen CENEVAL --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <s:text
							name="menu.coordinacion.CENEVAL" />
				</a>
					<ul class="dropdown-menu">
						<!--Registrar Folios CENEVAL -->
						<li><a
							href="${pageContext.request.contextPath}/ceneval/registrar-folio/new"><s:text
									name="menu.coordinacion.registrar_folios_CENEVAL" /></a></li>
						<!--Planificar Salones -->
						<li><a
							href="${pageContext.request.contextPath}/ceneval/planificar-salones"><s:text
									name="menu.coordinacion.planificar_salones" /></a></li>
						<!--Ver Salones Programados -->
						<li><a
							href="${pageContext.request.contextPath}/ceneval/planificar-salones/1"><s:text
									name="menu.coordinacion.ver_salones_programados" /></a></li>
						<!--Registrar Resultados -->
						<li><a
							href="${pageContext.request.contextPath}/ceneval/registrar-folio!resultados"><s:text
									name="menu.coordinacion.registrar_resultados" /></a></li>
						<!--Ver Resultados -->
						<li><a
							href="${pageContext.request.contextPath}/ceneval/registrar-folio!showResultados"><s:text
									name="menu.coordinacion.ver_resultados" /></a></li>
					</ul>
				</li>
				<!-- Exámen picometrico -->
				<li class="dropdown-submenu"><a href="#"><s:text
							name="menu.coordinacion.examen_psicometrico" /></a>
					<ul class="dropdown-menu">
						<!-- Reservar salones -->
						<li><a
							href="${pageContext.request.contextPath}/psicometrico/gestionar-salon/new"><s:text
									name="menu.coordinacion.reservar_salones" /></a></li>
					</ul></li>
				<!-- Aspirantes -->
				<li class="dropdown-submenu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><s:text
							name="menu.coordinacion.seleccion_aspirantes" /></a>
					<ul class="dropdown-menu">
						<!-- Aspirantes Aceptados -->
						<li><a
							href="${pageContext.request.contextPath}/admision/aspirantes-aceptar"><s:text
									name="menu.coordinacion.aspirantes_aceptados" /></a></li>
						<!-- Aspirantes en espera -->
						<li><a
							href="${pageContext.request.contextPath}/admision/aspirantes-aceptar/new"><s:text
									name="menu.coordinacion.aspirantes_en_espera" /></a></li>
					</ul></li>
			</ul></li>
		<!-- Entrevistas -->
		<li class="dropdown"><a title="${ttbEntrevista}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.coordinacion.entrevistas" /><b class="caret"> <!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- Lista de aspirantes Seleccionados -->
				<li><a
					href="${pageContext.request.contextPath}/admision/aspirantes-entrevistar"><s:text
							name="menu.coordinacion.lista_aspirantes_seleccionados" /></a></li>
				<!-- Configurar Lista de espera -->
				<li><a
					href="${pageContext.request.contextPath}/admision/aspirantes-entrevistar/new"><s:text
							name="menu.coordinacion.configurar_lista_espera" /></a></li>
				<!-- Configurar Salones -->
				<li><a
					href="${pageContext.request.contextPath}/entrevistas/gestionar-salones/new"><s:text
							name="menu.coordinacion.configurar_salones" /></a></li>
				<!-- Gestionar Entrevistadores -->
				<li><a
					href="${pageContext.request.contextPath}/entrevistas/gestionar-entrevistadores"><s:text
							name="menu.coordinacion.gestionar_entrevistadores" /></a></li>
				<!-- Gestionar Aplicacion de entrevistas -->
				<li><a
					href="${pageContext.request.contextPath}/entrevistas/gestionar-entrevistas"><s:text
							name="menu.coordinacion.gestionar_aplicacion_entrevistas" /></a></li>
				<!-- Resultados de Entrevistas -->
				<li><a
					href="${pageContext.request.contextPath}/entrevistas/gestionar-entrevistas!resultados"><s:text
							name="menu.coordinacion.resultados_entrevistas" /></a></li>
			</ul></li>

		<!-- Gestion Academica -->
		<li class="dropdown"><a title="${ttbGestionAcademica}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.coordinacion.gestion_academica" /><b class="caret">
					<!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- grupos -->
				<li class="dropdown-submenu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><s:text
							name="menu.coordinacion.grupos" /></a>
					<ul class="dropdown-menu">
						<!-- Vigente -->
						<li><a href="#"><s:text name="menu.coordinacion.vigente" /></a></li>
						<!-- Planeación -->
						<li><a
							href="${pageContext.request.contextPath}/ciclo-escolar/gestionar-grupo"><s:text
									name="menu.coordinacion.planeacion" /></a></li>
					</ul></li>
				<!-- salones -->
				<li><a
					href="${pageContext.request.contextPath}/infraestructura/gestionar-salones"><s:text
							name="menu.coordinacion.salones" /></a></li>
				<!-- profesores -->
				<li class="dropdown-submenu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><s:text
							name="menu.coordinacion.profesores" /></a>
					<ul class="dropdown-menu">
						<!-- Gestionar Profesores -->
						<li><a
							href="${pageContext.request.contextPath}/profesor/gestionar-profesor"><s:text
									name="menu.coordinacion.gestionar_profesores" /></a></li>
						<!-- Cargar Archivos de Identidad -->
						<li><a href="#"><s:text
									name="menu.coordinacion.cargar_archivos_identidad" /></a></li>
						<!-- Gestionar Ausencias -->
						<li><a
							href="${pageContext.request.contextPath}/profesor/gestionar-ausencia"><s:text
									name="menu.coordinacion.gestionar_ausencias" /></a></li>
						<!-- Gestionar Asistencia -->
						<li><a href="#"><s:text
									name="menu.coordinacion.gestionar_asistencia" /></a></li>
						<!-- Generar Reporte de Asistencia -->
						<li><a href="#"><s:text
									name="menu.coordinacion.generar_reporte_asistencia" /></a></li>
					</ul></li>
			</ul></li>

		<!-- Estructuración Académica -->
		<li class="dropdown"><a title="${ttbEstructuracionAcademica}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.coordinacion.estructuración_academica" /><b
				class="caret"> <!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- Gestionar plan de estudios -->
				<li><a
					href="${pageContext.request.contextPath}/estructura-academica/gestionar-plan-estudios"><s:text
							name="menu.coordinacion.gestionar_plan_estudios" /></a></li>
				<!-- Gestionar equivalencias -->
				<li><a
					href="${pageContext.request.contextPath}/planestudios/gestionar-equivalencia"><s:text
							name="menu.coordinacion.gestionar_equivalencias" /></a></li>
			</ul></li>

		<!-- Reinscripcion -->
		<li class="dropdown"><a title="${ttbReinscripcion}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.coordinacion.reinscripcion" /><b class="caret"> <!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- Distribuir Alumnos -->
				<li><a href="#"><s:text
							name="menu.coordinacion.distribuir_alumnos" /></a></li>
			</ul></li>

		<!-- Inscripciones -->
		<li class="dropdown"><a title="${ttbInscripciones}"
			data-toggle="dropdown" class="dropdown-toggle" href="#"
			aria-expanded="false"><s:text
					name="menu.coordinacion.inscripciones" /><b class="caret"> <!--  -->
			</b></a>
			<ul class="dropdown-menu">
				<!-- Visualizar estado de pago -->
				<li><a href="#"><s:text
							name="menu.coordinacion.visualizar_estado_pago" /></a></li>
				<!-- Gestionar Grupos -->
				<li><a href="#"><s:text
							name="menu.coordinacion.gestionar_grupos" /></a></li>
			</ul></li>

	</ul>
</jsp:root>