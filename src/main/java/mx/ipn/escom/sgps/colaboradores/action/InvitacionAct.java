package mx.ipn.escom.sgps.colaboradores.action;

import org.apache.struts2.convention.annotation.Namespace;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/colaborador")
public class InvitacionAct extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7724656719800331372L;

	public String index() {
		return "index";
	}
	public String edit() {
		return "edit";
	}
	public String editNew() {
		return "editNew";
	}

}
