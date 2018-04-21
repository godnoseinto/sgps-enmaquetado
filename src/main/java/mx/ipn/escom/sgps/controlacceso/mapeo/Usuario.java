package mx.ipn.escom.sgps.controlacceso.mapeo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;

import mx.ipn.escom.sgps.util.mapeo.Modelo;

@Entity
@Table(name = "tca01_usuario")
@Inheritance(strategy = InheritanceType.JOINED)
public class Usuario implements Modelo, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1091890528149412602L;

	@Id
	@SequenceGenerator(name = "tca01_usuario_id_usuario_seq", sequenceName = "tca01_usuario_id_usuario_seq", allocationSize = 1)
	@GeneratedValue(generator = "tca01_usuario_id_usuario_seq", strategy = GenerationType.SEQUENCE)
	@Column(name = "id_usuario")
	private Integer id;

	@Column(name = "nombre")
	private String nombre;

	@Column(name = "primer_ap")
	private String primerAp;

	@Column(name = "segundo_ap")
	private String segundoAp;

	@Column(name = "token")
	private String token;

	@Column(name = "fh_caducidad_token")
	private Date caducidad;

	@Column(name = "login")
	private String login;

	@Column(name = "password")
	private String password;

	@Transient
	private Integer idPerfilActivo;

	@OneToMany
	@JoinColumn(name = "id_usuario", referencedColumnName = "id_usuario", updatable = false, insertable = false)
	private List<Cuenta> cuentas;

	public Usuario() {
		super();
	}

	public Usuario(String login, String password) {
		super();
		this.login = login;
		this.password = password;
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

	public String getPrimerAp() {
		return primerAp;
	}

	public void setPrimerAp(String primerAp) {
		this.primerAp = primerAp;
	}

	public String getSegundoAp() {
		return segundoAp;
	}

	public void setSegundoAp(String segundoAp) {
		this.segundoAp = segundoAp;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Date getCaducidad() {
		return caducidad;
	}

	public void setCaducidad(Date caducidad) {
		this.caducidad = caducidad;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Cuenta> getCuentas() {
		return cuentas;
	}

	public void setCuentas(List<Cuenta> cuentas) {
		this.cuentas = cuentas;
	}

	public Integer getIdPerfilActivo() {
		return idPerfilActivo;
	}

	public void setIdPerfilActivo(Integer idPerfilActivo) {
		this.idPerfilActivo = idPerfilActivo;
	}
}
