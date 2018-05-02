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
<div class="container text-center">    
  <div class="row">
    
    <div class="col-sm-10">
    
    <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default text-left">
            <div class="panel-body">
              <h2>Tarea: Analisis de datos</h2>
                 
            </div>
          </div>
        </div>
    </div>
    
    <div class="row">
    <table id="tblTareas" class="table table-bordered table-hover table-condensed bg-1 table-responsive">
					<thead>
						<tr>

							

							<th>Analistas</th>

							<th>Status</th>
							
							<th>Desempeño</th>

							<th>Acciones</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Pablo Garcia</td>

							<td>Activo</td>
							
							<td>Bueno</td>

							<td>
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareasnueva/new">
								   <s:property value="''" />
								   <i class="material-icons">&#xE7FE;</i>
						  		</a>
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/informacion/show">
					               <s:property value="''" />
			  		               <i class="material-icons">&#xE8F4;</i>
			  		            </a>
							</td>
						</tr>
						
						<tr>
							<td>Veronica</td>

							<td>Activo</td>
							
							<td>Bueno</td>

							<td>
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareasnueva/new">
								   <s:property value="''" />
								   <i class="material-icons">&#xE7FE;</i>
						  		</a>
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/informacion/show">
					               <s:property value="''" />
			  		               <i class="material-icons">&#xE8F4;</i>
			  		            </a>
							</td>
						</tr>
						
						<tr>
							<td>Fernando</td>

							<td>Activo</td>
							
							<td>Bueno</td>

							<td>
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareasnueva/new">
								   <s:property value="''" />
								   <i class="material-icons">&#xE7FE;</i>
						  		</a>
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/informacion/show">
					               <s:property value="''" />
			  		               <i class="material-icons">&#xE8F4;</i>
			  		            </a>
							</td>
						</tr>
					</tbody>
				</table>
				
				
				
				<table id="tblTareas" class="table table-bordered table-hover table-condensed bg-1 table-responsive">
					<thead>
						<tr>

							

							<th>Responsable</th>

							<th>Status</th>

							<th>Acciones</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Pablo Garcia</td>

							<td>Activo</td>

							<td>
						  		
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/tarea/tareasnueva/new">
								   <s:property value="''" />
								   <i class="material-icons">&#xE5C9;</i>
						  		</a>
						  		<a class="" href="${#pageContext.request.contextPath}/sgps-enmaquetado/colaborador/informacion/show">
					               <s:property value="''" />
			  		               <i class="material-icons">&#xE8F4;</i>
			  		            </a>
							</td>
						</tr>
					</tbody>
				</table>
    
      </div>
      
      
      
      
          
    </div>
    <div class="col-sm-2 well">
      <div class="thumbnail">
        <p>Ultimas Actualizaciones:</p>
       
        <p><strong>Gestor de proyectos</strong></p>
        <p>Vier. 27 November 2015</p>
        <a class="btn btn-default btn-primary" href="${#pageContext.request.contextPath}/sgps-enmaquetado/productividad/">
			<s:property value="'Estadisticas'" /></a>
      </div>      
      <div class="well">
        <p>Mensajes</p>
      </div>
    </div>
  </div>
</div>
</body>
	</html>
</jsp:root>