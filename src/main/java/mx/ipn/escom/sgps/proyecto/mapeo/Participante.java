package mx.ipn.escom.sgps.proyecto.mapeo;

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

import mx.ipn.escom.sgps.controlacceso.mapeo.Usuario;
import mx.ipn.escom.sgps.util.mapeo.Modelo;

@Entity
@Table(name = "tpr01_participantes")
@Inheritance(strategy = InheritanceType.JOINED)
public class Participante implements Modelo, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8435398767828652314L;

	@Id
	@SequenceGenerator(name = "tpr01_participante_id_participante_seq", sequenceName = "tpr01_participante_id_participante_seq", allocationSize = 1)
	@GeneratedValue(generator = "tpr01_participante_id_participante_seq", strategy = GenerationType.SEQUENCE)
	@Column(name = "id_participante")
	private Integer id;

	@Column(name = "id_proyecto")
	private Integer idProyecto;

	@Column(name = "id_usuario")
	private Integer idUsuario;

	@Column(name = "id_perfil")
	private Integer idPerfil;

	@ManyToOne
	@JoinColumn(name = "id_usuario", referencedColumnName = "id_usuario", updatable = false, insertable = false)
	private Usuario usuario;

	@ManyToOne
	@JoinColumn(name = "id_proyecto", referencedColumnName = "id_proyecto", insertable = false, updatable = false)
	private Proyecto proyecto;

	public Participante() {
		super();
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Proyecto getProyecto() {
		return proyecto;
	}

	public void setProyecto(Proyecto proyecto) {
		this.proyecto = proyecto;
	}

	public Integer getIdProyecto() {
		return idProyecto;
	}

	public void setIdProyecto(Integer idProyecto) {
		this.idProyecto = idProyecto;
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public Integer getIdPerfil() {
		return idPerfil;
	}

	public void setIdPerfil(Integer idPerfil) {
		this.idPerfil = idPerfil;
	}
}
