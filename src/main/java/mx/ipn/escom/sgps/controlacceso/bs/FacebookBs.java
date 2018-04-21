package mx.ipn.escom.sgps.controlacceso.bs;

import java.util.List;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import facebook4j.Facebook;
import facebook4j.FacebookFactory;
import facebook4j.conf.ConfigurationBuilder;

@Service("facebookBs")
@Scope(value = BeanDefinition.SCOPE_SINGLETON)
public class FacebookBs {

	public String iniciarSesionFacebook(StringBuffer realpath) {
		ConfigurationBuilder conf = new ConfigurationBuilder();
		conf.setDebugEnabled(true).setOAuthAppId("163149014352604")
				.setOAuthAppSecret("1b1102fe5648c3f45f84cfd2e1e10146").setOAuthPermissions("email,publish_stream");
		FacebookFactory ff = new FacebookFactory(conf.build());
		Facebook facebook = ff.getInstance();
		int index = realpath.lastIndexOf("/");
		realpath.replace(index,"http://localhost:8081/sgps-desarrollo".length(), "");
		//.append("/iniciarSesion!conectarFacebook");
		System.err.println(realpath.toString());
		return facebook.getOAuthAuthorizationURL(realpath.toString());
	}

}
