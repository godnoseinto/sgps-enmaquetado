package mx.ipn.escom.sgps.controlacceso.action;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.AllowedMethods;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

import mx.ipn.escom.sgps.controlacceso.bs.FacebookBs;
import mx.ipn.escom.sgps.controlacceso.bs.LoginBs;
import mx.ipn.escom.sgps.controlacceso.bs.PerfilBs;
import mx.ipn.escom.sgps.controlacceso.mapeo.PerfilUsuarioEnum;
import mx.ipn.escom.sgps.controlacceso.mapeo.Usuario;
import mx.ipn.escom.sgps.util.NombreObjetosSesion;
import mx.ipn.escom.sgps.util.SessionManager;

@Namespace("/controlacceso")
@Results({ @Result(name = IniciarSesionAct.INICIA_FACEBOOK, location = "%{url}", type = "redirect"),
		@Result(name = IniciarSesionAct.RESULT_LOGIN, location = "bienvenida/new", type = "redirectAction") })
@AllowedMethods({ "iniciarFacebook", "iniciarSesion" })
public class IniciarSesionAct extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3361285149671744188L;

	public static final String INICIA_FACEBOOK = "iniciarFacebook";

	public static final String RESULT_LOGIN = "iniciarSesionResult";

	public static final String INVALID_LOGIN = "invalidLogin";

	public static final Logger LOGGER = LoggerFactory.getLogger(PerfilBs.class);

	private String url;

	private Usuario model;

	@Autowired
	private LoginBs loginBs;

	@Autowired
	private FacebookBs facebookBs;

	@Autowired
	private PerfilBs perfilBs;

	public String index() {
		return "index";
	}

	public String editNew() {
		return "editNew";
	}

	public String edit() {
		return "edit";
	}

	public String show() {
		return "show";
	}

	public String iniciarFacebook() {
		String realpath = ServletActionContext.getServletContext().getContextPath();
		System.err.println(realpath);
		StringBuffer buffer = new StringBuffer(realpath);
		System.err.println(buffer);
		url = facebookBs.iniciarSesionFacebook(buffer);
		return INICIA_FACEBOOK;
	}

	public String iniciarSesion() {
		if (loginBs.validarInicioSesion(model)) {
			Usuario usuario = (Usuario) SessionManager.get(NombreObjetosSesion.USUARIO_SESION);
			return redirectPorPerfil(usuario);
		}
		addActionError("El usuario y/o contraseña no es correcta");
		return "index";
	}

	private String redirectPorPerfil(Usuario usuario) {

		Integer perfilActivo = perfilBs.obtenerPerfilActivo(usuario);
		usuario.setIdPerfilActivo(perfilActivo);
		SessionManager.put(NombreObjetosSesion.USUARIO_SESION, usuario);

		if (perfilActivo.equals(PerfilUsuarioEnum.LIDER_PROYECTO.getIdPerfil())) {
			LOGGER.info("Se inicio Sesion como Lider de proyecto");
			return RESULT_LOGIN;
		} else if (perfilActivo.equals(PerfilUsuarioEnum.JEFE_O_GERENTE_AREA.getIdPerfil())) {
			LOGGER.info("Se inicio sesion como jefe de área");
			return RESULT_LOGIN;
		} else if (perfilActivo.equals(PerfilUsuarioEnum.COLABORADOR.getIdPerfil())) {
			LOGGER.info("Se inicio sesion como colaborador");
			return RESULT_LOGIN;
		}

		return INVALID_LOGIN;
	}

	public FacebookBs getFacebookBs() {
		return facebookBs;
	}

	public void setFacebookBs(FacebookBs facebookBs) {
		this.facebookBs = facebookBs;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Usuario getModel() {
		return model;
	}

	public void setModel(Usuario model) {
		this.model = model;
	}
}
