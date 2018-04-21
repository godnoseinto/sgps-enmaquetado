<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
	xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:s="/struts-tags"
	xmlns:sj="/struts-jquery-tags"
	xmlns:log="http://jakarta.apache.org/taglibs/log-1.0">
	<jsp:directive.page language="java"
		contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" />
	<jsp:text>
		<![CDATA[ <?xml version="1.0" encoding="UTF-8" ?> ]]>
	</jsp:text>
	<jsp:text>
		<![CDATA[ <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> ]]>
	</jsp:text>
	<html xmlns="http://www.w3.org/1999/xhtml" slick-uniqueid="3" dir="ltr"
		class="com_content view-article itemid-482 home j25 mm-hover no-touch uk-notouch wf--n4-active wf-opensans-n4-active wf-opensans-n6-active wf-opensans-n3-active wf-active"
		lang="es-MX">
<jsp:text>
	<![CDATA[
		        <script src="${pageContext.request.contextPath}/resources/scripts/emeth-dataTables.js" type="text/javascript"></script>
				<script src="${pageContext.request.contextPath}/example.js"  type="text/paperscript" canvas="canvas"></script>        
			]]>
</jsp:text>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<sj:head debug="true" jqueryui="true" jquerytheme="custom-eld-1.0"
	locale="es" customBasepath="%{#urlRutaContextoTema}" />
<title><s:text name="mx.ipn.escom.cdt.title" /></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/components/bootstrap/css/bootstrap.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/components/bootstrap/css/bootstrap-theme.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/components/dataTables/media/css/jquery.dataTables.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/components/dataTables/media/css/dataTables.jqueryui.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/components/dataTables/media/css/responsive.dataTables.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/navbar-personalizado.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer-personalizado.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/form.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/scrolling-nav.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/contactos.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/material-icons.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/material-loader.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-clockpicker.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/generaldesign.css"
	type="text/css" />
<decorator:head />
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	<s:include value="header.jsp" />
	<section id="intro" class="intro-section">
		<div id="content" class="container">
			<div class="row">
				<decorator:body />
			</div>
		</div>


		<s:include value="footer.jsp" />

	</section>
</body>
	</html>
</jsp:root>