package mx.ipn.escom.sgps.colaboradores.action;

import org.apache.struts2.convention.annotation.AllowedMethods;
import org.apache.struts2.convention.annotation.Namespace;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/colaborador")
@AllowedMethods({"invitar"})

public class InicioAct extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4514286484266012200L;
	
	public String index() {
		return "index";
	}
	
	public String edit() {
		return "edit";
	}
	public String editNew() {
		return "editNew";
	}
	public String invitar() {
		return "invitar";
	}
	

}
