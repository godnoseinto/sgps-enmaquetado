package mx.ipn.escom.sgps.action;

import org.apache.struts2.convention.annotation.Namespace;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/prueba")

public class PruebasAct extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5919384392715176243L;

	public String index() {
		return "index"; 
	}
}
