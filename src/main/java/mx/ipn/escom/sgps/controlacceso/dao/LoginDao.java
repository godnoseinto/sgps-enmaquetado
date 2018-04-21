package mx.ipn.escom.sgps.controlacceso.dao;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import mx.ipn.escom.sgps.controlacceso.mapeo.Usuario;

@Service("loginDao")
@Scope(value=BeanDefinition.SCOPE_SINGLETON)
public class LoginDao {

	public Usuario buscarUsuario(String login) {
		return new Usuario("user", "password");
	}
}
