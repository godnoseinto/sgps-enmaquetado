package mx.ipn.escom.sgps.proyecto.bs;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import mx.ipn.escom.sgps.proyecto.mapeo.Proyecto;
import mx.ipn.escom.sgps.util.bs.GenericBs;

@Service("proyectoBs")
@Scope(value = BeanDefinition.SCOPE_SINGLETON)
public class ProyectoBs extends GenericBs {

	@SuppressWarnings("deprecation")
	public List<Proyecto> obtenerProyectos() {
		List<Proyecto> listProyectos = new ArrayList<Proyecto>();
		Proyecto proyectoUno = new Proyecto();
		proyectoUno.setNombre("Proyecto Uno");
		proyectoUno.setInicio(new Date(2018, 4, 2));
		proyectoUno.setFin(new Date(2023, 4, 2));
		listProyectos.add(proyectoUno);
		Proyecto proyectoDos = new Proyecto();
		proyectoDos.setNombre("Proyecto Dos");
		proyectoDos.setInicio(new Date(2019, 4, 2));
		proyectoDos.setFin(new Date(2021, 4, 2));
		listProyectos.add(proyectoDos);
		Proyecto proyectoTres = new Proyecto();
		proyectoTres.setNombre("Proyecto Tres");
		proyectoTres.setInicio(new Date(2020, 4, 2));
		proyectoTres.setFin(new Date(2023, 4, 2));
		listProyectos.add(proyectoTres);
		return listProyectos;
	}

}
