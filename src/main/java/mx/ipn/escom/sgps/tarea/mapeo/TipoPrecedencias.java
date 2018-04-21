package mx.ipn.escom.sgps.tarea.mapeo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Table(name = "tta05_tipo_precedencia")
@Inheritance(strategy = InheritanceType.JOINED)
public class TipoPrecedencias implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6933842406605664726L;
	
	@Id
	@Column(name="id_precedencia")
	private Integer idTipo;
	
	@Column(name="nb_precedencia")
	private String nombre;
	
	@Column(name="ds_precedencia")
	private String descripcion;

	public TipoPrecedencias() {
		super();
	}

	public Integer getIdTipo() {
		return idTipo;
	}

	public void setIdTipo(Integer idTipo) {
		this.idTipo = idTipo;
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
