package mx.ipn.escom.sgps.controlacceso.action;

import org.apache.struts2.convention.annotation.AllowedMethods;
import org.apache.struts2.convention.annotation.Namespace;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/controlacceso")
@AllowedMethods({"nombreMetodo"})
public class BienvenidaAct extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6412036333561529340L;

	public String index(){
		return "index";
	}
	
	public String editNew() {
		return "editNew";
	}
	
	public String nombreMetodo() {
		return "nombreMetodo";
	}
	
}
