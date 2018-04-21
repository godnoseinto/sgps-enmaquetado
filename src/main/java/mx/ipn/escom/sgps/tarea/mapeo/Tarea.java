package mx.ipn.escom.sgps.tarea.mapeo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.opensymphony.xwork2.ActionSupport;





public class Tarea extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6076425942214325971L;

	@Id
	@SequenceGenerator(name = "tta01_tarea_id_tarea_seq", sequenceName = "tta01_tarea_id_tarea_seq", allocationSize = 1)
	@GeneratedValue(generator = "tta01_tarea_id_tarea_seq", strategy = GenerationType.SEQUENCE)
	@Column(name = "id_tarea")
	private Integer id;
	
	@Column(name="id_proyecto")
	private Integer idProyecto;
	
	@Column(name="id_estado")
	private Integer idEstado;
	
	@Column(name="nb_tarea")
	private String nombre;
	
	@Column(name="ds_tarea")
	private String descripcion;
	
	

	public Integer getId() {
		return id;
	}
	
	public Tarea() {
		super();
	}
	
	public Tarea(Integer id, Integer idProyecto, Integer idEstado, String nombre){
        this.id = id;
        this.idProyecto = idProyecto;
        this.idEstado = idEstado;
        this.nombre = nombre;
    }

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIdProyecto() {
		return idProyecto;
	}

	public void setIdProyecto(Integer idProyecto) {
		this.idProyecto = idProyecto;
	}

	public Integer getIdEstado() {
		return idEstado;
	}

	public void setIdEstado(Integer idEstado) {
		this.idEstado = idEstado;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	
}
