$(function(){

	dataTableEMETH.createSortedDataTable("tblProyectos", 0, "asc");
});

function eliminarProyecto(idSel){
	$.publish("showDlgEliminarProyecto");
	
}

function  closeConfirmDlg(){
	$.publish("closeDlgEliminarProyecto");
}

function terminarProyecto(idProyecto){
	var action=$("#hdnUrlActionF").val();
	$("#frmFinalizarProyecto").attr("action",action);
	$("#hdnIdSelF").attr("value",idProyecto);
	$.publish("showDlgFinalizarProyecto");
}

function closeDlgFinalizarProyecto(){
	$.publish("closeDlgFinalizarProyecto");
}