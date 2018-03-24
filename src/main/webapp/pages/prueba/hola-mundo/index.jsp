<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:s="/struts-tags" xmlns:sj="/struts-jquery-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:text>
	<![CDATA[
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/gantt-master/dist/frappe-gantt.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pages/prueba/hola-mundo/js/index.js"></script>
	]]>
</jsp:text>
</head>
<body>
	<!-- Body -->
	<h2>Hola Mundo x 2</h2>
	<p>Como estas</p>
	
	
	<div class="container">
		<h2>Interactive Gantt Chart entirely made in SVG!</h2>
		<div class="gantt-target"></div>
	</div>        


</body>
	</html>
</jsp:root>