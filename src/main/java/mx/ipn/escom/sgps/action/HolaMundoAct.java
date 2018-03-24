package mx.ipn.escom.sgps.action;

import org.apache.struts2.convention.annotation.Namespace;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/prueba")
public class HolaMundoAct extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8970893472186640806L;

	public String index() {
		return "index";
	}

}
