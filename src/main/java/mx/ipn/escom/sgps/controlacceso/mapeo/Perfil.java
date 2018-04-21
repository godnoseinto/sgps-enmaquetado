package mx.ipn.escom.sgps.controlacceso.mapeo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import mx.ipn.escom.sgps.util.mapeo.Modelo;

@Entity
@Table(name = "tca03_perfil")
@Inheritance(strategy = InheritanceType.JOINED)
public class Perfil implements Modelo, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4409113702457832007L;

	@Id
	@SequenceGenerator(name = "tca03_perfil_id_perfil_seq", sequenceName = "tca03_perfil_id_perfil_seq", allocationSize = 1)
	@GeneratedValue(generator = "tca03_perfil_id_perfil_seq", strategy = GenerationType.SEQUENCE)
	@Column(name = "id_perfil")
	private Integer id;

	@Column(name = "nb_perfil")
	private String nombre;

	@Column(name = "ds_perfil")
	private String descripcion;

	public Perfil() {
		super();
	}

	public Perfil(Integer id, String nombre, String descripcion) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}
