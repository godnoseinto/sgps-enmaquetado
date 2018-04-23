package mx.ipn.escom.sgps.tarea.bs;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import mx.ipn.escom.sgps.tarea.mapeo.Tarea;
import mx.ipn.escom.sgps.util.bs.GenericBs;

@Service("tareaBs")
@Scope(value=BeanDefinition.SCOPE_SINGLETON)
public class TareaBs extends GenericBs{
	@Autowired
	public List<Tarea> obtenerListaTarea(){
		Tarea tarea1 = new Tarea(1,1,1,"tarea1");
		Tarea tarea2 = new Tarea(1,1,1,"tarea2");
		List<Tarea> listTareas = new ArrayList<Tarea>();
		listTareas.add(tarea1);
		listTareas.add(tarea2);
		System.out.println(listTareas);
		
		
        
		return listTareas;
	}
}
