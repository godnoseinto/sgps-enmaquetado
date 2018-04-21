package mx.ipn.escom.sgps.proyecto.mapeo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tpr02_proyecto")
@Inheritance(strategy = InheritanceType.JOINED)
public class Proyecto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8083196471065867926L;

	@Id
	@SequenceGenerator(name = "tpr02_proyecto_id_proyecto_seq", sequenceName = "tpr02_proyecto_id_proyecto_seq", allocationSize = 1)
	@GeneratedValue(generator = "tpr02_proyecto_id_proyecto_seq", strategy = GenerationType.SEQUENCE)
	@Column(name = "id_proyecto")
	private Integer id;

	@Column(name = "nb_proyecto")
	private String nombre;

	@Column(name = "id_estado")
	private Integer idEstado;

	@Column(name = "tx_descripcion")
	private String descripcion;

	@Column(name = "fh_inicio")
	private Date inicio;

	@Column(name = "fh_termino")
	private Date fin;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Date getInicio() {
		return inicio;
	}

	public void setInicio(Date inicio) {
		this.inicio = inicio;
	}

	public Date getFin() {
		return fin;
	}

	public void setFin(Date fin) {
		this.fin = fin;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}
