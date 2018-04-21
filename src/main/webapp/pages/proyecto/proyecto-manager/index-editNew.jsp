<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:s="/struts-tags" xmlns:sj="/struts-jquery-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Head -->
</head>
<body>
	<!-- Body -->
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-md-12">
				<h1 class="title">
					<s:property value="%{getText('CUP2_TITLE')}" />
				</h1>
			</div>

			<div class="row form-group">
				<div class="col-md-8 col-md-offset-2">
					<s:actionerror theme="%{varTheme}" />
					<s:actionmessage theme="%{varTheme}" />
				</div>
			</div>

			<fieldset class="form form-horizontal form-medium">
				<legend class="form-section">
					<s:text name="CUP2_SUBTITLE" />
				</legend>

			</fieldset>

		</div>
	</div>
</body>
	</html>
</jsp:root>