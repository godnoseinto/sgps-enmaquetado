package mx.ipn.escom.sgps.controlacceso.mapeo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class CuentaId implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3023001293950093284L;

	@Column(name = "id_cuenta", nullable = false)
	private Integer idCuenta;

	@Column(name = "id_usuario", nullable = false)
	private Integer idUsuario;

	@Column(name = "id_perfil", nullable = false)
	private Integer idPerfil;

	public CuentaId() {
		super();
	}

	public CuentaId(Integer idCuenta, Integer idUsuario, Integer idPerfil) {
		super();
		this.idCuenta = idCuenta;
		this.idUsuario = idUsuario;
		this.idPerfil = idPerfil;
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
}
