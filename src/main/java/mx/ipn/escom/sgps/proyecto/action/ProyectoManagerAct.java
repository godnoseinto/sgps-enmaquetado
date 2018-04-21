package mx.ipn.escom.sgps.proyecto.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

import mx.ipn.escom.sgps.proyecto.bs.ProyectoBs;
import mx.ipn.escom.sgps.proyecto.mapeo.Proyecto;

@Namespace("/proyecto")
public class ProyectoManagerAct extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5931336632396281087L;

	private List<Proyecto> listProyecto;

	@Autowired
	private ProyectoBs proyectoBs;

	public String index() {
		listProyecto = proyectoBs.obtenerProyectos();
		return "index";
	}

	public String editNew() {
		return "editNew";
	}

	public List<Proyecto> getListProyecto() {
		return listProyecto;
	}

	public void setListProyecto(List<Proyecto> listProyecto) {
		this.listProyecto = listProyecto;
	}

	public ProyectoBs getProyectoBs() {
		return proyectoBs;
	}

	public void setProyectoBs(ProyectoBs proyectoBs) {
		this.proyectoBs = proyectoBs;
	}
}
