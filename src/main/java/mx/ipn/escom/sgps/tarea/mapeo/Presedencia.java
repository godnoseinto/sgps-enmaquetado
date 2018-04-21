package mx.ipn.escom.sgps.tarea.mapeo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tta04_precedencias")
@Inheritance(strategy = InheritanceType.JOINED)
public class Presedencia implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6899809717550708096L;
	
	@Id	
	@Column(name="id_tarea_predecesora")
	private Integer idTareaPredecesora;
	
	@Column(name="id_tarea-sucesora")
	private Integer idTareaSucesora;
	
	@Column(name="id_tipo_precedencia")
	private Integer idTipo;
	
	@ManyToOne
	@JoinColumn(name="id_tipo_precedencia",referencedColumnName="id_precedencia",updatable=false,insertable=false)
	private TipoPrecedencias tipoPresedencias;
	
	
	public Presedencia() {
		super();
	}

	public Integer getIdTareaPredecesora() {
		return idTareaPredecesora;
	}

	public void setIdTareaPredecesora(Integer idTareaPredecesora) {
		this.idTareaPredecesora = idTareaPredecesora;
	}

	public Integer getIdTareaSucesora() {
		return idTareaSucesora;
	}

	public void setIdTareaSucesora(Integer idTareaSucesora) {
		this.idTareaSucesora = idTareaSucesora;
	}
}
