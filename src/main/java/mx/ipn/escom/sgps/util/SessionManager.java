package mx.ipn.escom.sgps.util;

import com.opensymphony.xwork2.ActionContext;

public class SessionManager {
	/**
	 * Metodo proxy que regresa el objeto que se encuentra en la sesiónn con la
	 * llave especificada en nombre.
	 * 
	 * @param nombre
	 *            llave del objeto
	 * @return objeto que se obtuvo de la sesi??n
	 */
	public static Object get(String nombre) {
		return ActionContext.getContext().getSession().get(nombre);
	}

	/**
	 * Metodo proxy que sube un objeto a la sesión con cuya llave se especifica en
	 * nombre
	 * 
	 * @param nombre
	 *            llave del objeto
	 * @param o
	 *            objeto a subir a la sesiónn
	 * @return objeto que se agrega a la sesión
	 */
	public static Object put(String nombre, Object o) {
		return ActionContext.getContext().getSession().put(nombre, o);
	}

	/**
	 * Método proxy que limpia la sesión.
	 */
	public static void clear() {
		ActionContext.getContext().getSession().clear();
	}

	/**
	 * Método proxy que elimina un objeto de la sesión cuya llave se especifica en
	 * nombre
	 * 
	 * @param nombre
	 *            llave del objeto
	 * @return objeto que se elimin?? de la sesi??n
	 */
	public static Object delete(String nombre) {
		return ActionContext.getContext().getSession().remove(nombre);
	}

	/**
	 * Método proxy que verifica si la sesión está limpia
	 * 
	 * @return false si la sesi??n no est?? limpia
	 */
	public boolean isEmpty() {
		return ActionContext.getContext().getSession().isEmpty();
	}
}
