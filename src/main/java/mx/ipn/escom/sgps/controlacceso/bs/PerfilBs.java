package mx.ipn.escom.sgps.controlacceso.bs;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import mx.ipn.escom.sgps.controlacceso.mapeo.Cuenta;
import mx.ipn.escom.sgps.controlacceso.mapeo.Usuario;
import mx.ipn.escom.sgps.util.bs.GenericBs;

@Service("perfilBs")
@Scope(value = BeanDefinition.SCOPE_SINGLETON)
public class PerfilBs extends GenericBs {

	public Integer obtenerPerfilActivo(Usuario usuario) {
		Date fechaActual = new Date();
		List<Cuenta> listCuenta = usuario.getCuentas();

		for (Cuenta cuenta : listCuenta) {
			if ((fechaActual.equals(cuenta.getInicio()) || fechaActual.after(cuenta.getInicio()))
					&& (fechaActual.before(cuenta.getFin()) || fechaActual.equals(cuenta.getFin()))) {
				return cuenta.getIdPerfil();
			}
		}

		return 0;
	}

}
