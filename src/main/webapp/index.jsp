<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:s="/struts-tags" xmlns:sj="/struts-jquery-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:text>
	<![CDATA[
		        <script src="${pageContext.request.contextPath}/resources/Paper/dist/paper-full.js" type="text/javascript"></script>
				<script src="${pageContext.request.contextPath}/example.js"  type="text/paperscript" canvas="canvas"></script>        
			]]>
</jsp:text>
</head>
<body>
	<!-- Body -->
	<canvas id="canvas"></canvas>
</body>
	</html>
</jsp:root>
