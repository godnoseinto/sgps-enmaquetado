package mx.ipn.escom.sgps.tarea.action;
import org.apache.struts2.convention.annotation.AllowedMethods;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;



import java.util.ArrayList;
import java.util.List;
@Namespace("/tarea")

public class TareasAct extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6412036333561529340L;
	//private List<Tarea> listTareas;
	private Integer idTarea;
	@Autowired
	//private TareaBs tareasBs;
	public String index(){
		//listTareas = tareasBs.obtenerListaTarea();
		
		return "index";
	}
	
	public String editNew() {
		return "editNew";
	}
	public String show() {
		return "show";
	}

	
	
	
}


