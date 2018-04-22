package mx.ipn.escom.sgps.colaboradores.action;

import org.apache.struts2.convention.annotation.Namespace;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/colaborador")
public class ColaboradoresAct extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4514286484266012200L;
	
	public String index() {
		return "index";
	}
	
	public String show() {
		return"show";
	}

}
