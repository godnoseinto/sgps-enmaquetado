/**
 * Namespace que permite llenar selects con listas obtenidas mediante peticiones
 * ajax
 * 
 * @author Ricardo Ruiz Maldonado
 * @version 1.0 "Oct 24, 2017"
 */
var ajaxSelect = function() {
	/**
	 * Funcion que permite llenar un select con una lista de objetos. Borra el
	 * contenido del select y lo substituye por las nuevas opciones. Al
	 * principio del select pone el valor y el id de header que se encuentren en
	 * los inputs [ocultos] con id's #hdnHeaderKey y #hdnHeaderValue. En caso de
	 * que el select esté desactivado, se activara.
	 * 
	 * @param {string}
	 *            idSelect - id del select a modificar
	 * @param {Object[]}
	 *            listObjects - lista de objetos con atributos a utilizar como
	 *            valores y llaves del select
	 * @param {string}
	 *            optionId - atributo de un objeto perteneciente a listObjects
	 *            que sera utilizado como key del select
	 * @param {string}
	 *            optionValue - atributo de un objeto perteneciente a
	 *            listObjects que sera utilizado como value del select
	 */
	function llenarSelect(idSelect, listObjects, optionId, optionValue) {
		var listOptions = '';
		var _slcObjects = $("#" + idSelect);

		// Elimina todas las opciones del select
		_slcObjects.find('option').remove().end();
		// Agrega el header key y el heder value al select
		listOptions += '<option value="' + $("#hdnHeaderKey").val() + '">'
				+ $("#hdnHeaderValue").val() + '</option>';
		// Agrega las nuevas opciones al select
		$.each(listObjects, function(index, value) {
			listOptions += '<option value="' + $(value).attr(optionId) + '">'
					+ $(value).attr(optionValue) + '</option>';
		});
		// Habilita el select
		_slcObjects.append(listOptions).attr("disabled", false);
	}

	/**
	 * Borra todas las opciones de un select, pone la opcion de 'Seleccione' y
	 * deshabilita el campo
	 * 
	 * @param idSelect
	 *            id del select a deshabilitar
	 * @returns
	 */
	function deshabilitarSelect(idSelect) {
		var listOptions = '';
		var _slcObjects = $("#" + idSelect);

		// Elimina todas las opciones del select
		_slcObjects.find('option').remove().end();
		// Agrega el header key y el heder value al select
		listOptions += '<option value="' + $("#hdnHeaderKey").val() + '">'
				+ $("#hdnHeaderValue").val() + '</option>';
		// Habilita el select
		_slcObjects.append(listOptions).attr("disabled", true);
	}
	
	return {
		llenarSelect : llenarSelect,
		deshabilitarSelect : deshabilitarSelect
	};
}();