<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:s="/struts-tags" xmlns:sj="/struts-jquery-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Head -->
<jsp:text>
	<![CDATA[
		<script type="text/javascript" src="${pageContext.request.contextPath}/pages/productividad/js/Chart.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pages/productividad/js/Chart.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pages/productividad/js/Chart.bundle.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pages/productividad/js/Chart.bundle.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pages/productividad/js/utils.js"></script>
	]]>
</jsp:text>
</head>
<body>
	<div class="container-fluid text-center">
		<div class="row content">

		   <div id="canvas-holder" style="width:40%">
		      <canvas id="canvas"></canvas>
	       </div>
	       <jsp:text>
	<![CDATA[
		<script>
		var MONTHS = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
		var color = Chart.helpers.color;
		var barChartData = {
			labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
			datasets: [{
				label: 'Entregables%',
				backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
				borderColor: window.chartColors.red,
				borderWidth: 1,
				data: [
					54, 
					53, 
					54, 
					39, 
					16, 
					68, 
					12
				]
			}, {
				label: 'Eficiencia %',
				backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
				borderColor: window.chartColors.blue,
				borderWidth: 1,
				data: [
					23,
					45,
					56,
					67,
					78,
					23,
					randomScalingFactor()
				]
			}]

		};

		window.onload = function() {
			var ctx = document.getElementById('canvas').getContext('2d');
			window.myBar = new Chart(ctx, {
				type: 'bar',
				data: barChartData,
				options: {
					responsive: true,
					legend: {
						position: 'top',
					},
					title: {
						display: true,
						text: 'Estadisticas'
					}
				}
			});

		};



		</script>
	]]>
</jsp:text>
		</div>
	</div>
</body>
	</html>
</jsp:root>