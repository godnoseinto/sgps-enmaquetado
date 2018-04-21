package mx.ipn.escom.sgps.controlacceso.bs;

import java.util.List;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import mx.ipn.escom.sgps.controlacceso.mapeo.Usuario;
import mx.ipn.escom.sgps.util.NombreObjetosSesion;
import mx.ipn.escom.sgps.util.SessionManager;
import mx.ipn.escom.sgps.util.bs.GenericBs;

@Service("loginBs")
@Scope(value = BeanDefinition.SCOPE_SINGLETON)
public class LoginBs extends GenericBs {

	public Boolean validarInicioSesion(Usuario model) {
		Usuario usuario = new Usuario();
		usuario.setLogin(model.getLogin());
		List<Usuario> listUsuario = genericSearchBs.findByExample(usuario);
		System.err.println("Nombre: " + model.getLogin() + " Password: " + model.getPassword());
		if (listUsuario != null && !listUsuario.isEmpty()) {
			Usuario usuarioEncontrado = listUsuario.get(0);
			if (usuarioEncontrado.getPassword().equals(model.getPassword())) {
				SessionManager.put(NombreObjetosSesion.USUARIO_SESION, usuarioEncontrado);
				return true;
			}
		}

		return false;
	}

}
