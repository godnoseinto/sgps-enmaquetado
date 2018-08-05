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


  
<div class="container text-center">    
  <div class="row">
    <div class="col-sm-12">
       <span class="etiquetas-label">Proyecto : </span>
	   <span class="etiquetas-label">Gestor de proyectos</span>
    </div>
    <div class="col-sm-12">
    
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default text-left">
            <div class="panel-body">
            
            <div id="canvas-holder" class="col-sm-12">
		      <canvas id="canvas"></canvas>
	       </div>
	       <jsp:text>
	<![CDATA[
		<script>
		var MONTHS = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
		var color = Chart.helpers.color;
		var barChartData = {
			labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio'],
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
			
			
			
			
			
			var barChartData2 = {
			labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio'],
			datasets: [{
				label: 'Desempeño%',
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
			}]

		};
			var ctx2 = document.getElementById('canvas2').getContext('2d');
			window.myBar = new Chart(ctx2, {
				type: 'bar',
				data: barChartData2,
				options: {
					responsive: true,
					legend: {
						position: 'top',
					},
					title: {
						display: true,
						text: 'Mi desempeño'
					}
				}
			});

		};



		</script>
	]]>
</jsp:text>
            
            
              <a class="btn btn-default btn-sm btn-primary" href="${#pageContext.request.contextPath}">
			<s:property value="'Imprimir'" />
	                    </a>
                
            </div>
          </div>
        </div>
      </div>
      
      
      
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default text-left">
            <div class="panel-body">
            
            <div id="canvas-holder2" class="col-sm-12">
		      <canvas id="canvas2"></canvas>
	       </div>

            
            
              <a class="btn btn-default btn-sm btn-primary" href="${#pageContext.request.contextPath}">
			<s:property value="'Imprimir'" />
	                    </a>
                
            </div>
          </div>
        </div>
      </div>
      
      
         
    </div>
    
  </div>
</div>

















	<div class="container-fluid text-center">
		<div class="row content">

		   
		</div>
	</div>
	<!-- Botones de aceptar y cancelar -->
			<div class="outter-section">
				<div class="text-right col-md-12">
					<a class="btn btn-default btn-default-eld"
						href="${pageContext.request.contextPath}/tarea/tareas">
						<s:text name="mx.ipn.escom.boton.regresar" />
					</a>
				</div>
			</div>
</body>
	</html>
</jsp:root>