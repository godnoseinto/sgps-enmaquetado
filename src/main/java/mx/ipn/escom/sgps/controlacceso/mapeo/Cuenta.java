package mx.ipn.escom.sgps.controlacceso.mapeo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import mx.ipn.escom.sgps.util.mapeo.Modelo;

@Entity
@Table(name = "tca02_cuenta")
public class Cuenta implements Modelo, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3483849673936758504L;

	@EmbeddedId
	private CuentaId id;

	@Column(name = "id_cuenta", insertable = false, updatable = false)
	private Integer idCuenta;

	@Column(name = "id_usuario", insertable = false, updatable = false)
	private Integer idUsuario;

	@Column(name = "id_perfil", insertable = false, updatable = false)
	private Integer idPerfil;

	@Column(name = "fh_inicio")
	private Date inicio;

	@Column(name = "fh_termino")
	private Date fin;

	@ManyToOne
	@JoinColumn(name = "id_perfil", referencedColumnName = "id_perfil", updatable = false, insertable = false)
	private Perfil perfil;

	public Cuenta() {
		super();
	}

	public Cuenta(Integer idCuenta, Integer idUsuario, Integer idPerfil, Date inicio, Date fin) {
		super();
		this.id = new CuentaId(idCuenta, idUsuario, idPerfil);
		this.idCuenta = idCuenta;
		this.idUsuario = idUsuario;
		this.idPerfil = idPerfil;
		this.inicio = inicio;
		this.fin = fin;
	}

	public CuentaId getId() {
		return id;
	}

	public void setId(CuentaId id) {
		this.id = id;
	}

	public Integer getIdCuenta() {
		return idCuenta;
	}

	public void setIdCuenta(Integer idCuenta) {
		this.idCuenta = idCuenta;
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

	public Perfil getPerfil() {
		return perfil;
	}

	public void setPerfil(Perfil perfil) {
		this.perfil = perfil;
	}
}
