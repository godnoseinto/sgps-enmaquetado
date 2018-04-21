package mx.ipn.escom.sgps.util.bs;

import java.io.Serializable;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mx.ipn.escom.sgps.util.dao.GenericDao;
import mx.ipn.escom.sgps.util.mapeo.Modelo;

@Service("genericSearchBs")
@Scope(value = BeanDefinition.SCOPE_SINGLETON)
public class GenericSearchBs implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -9041727451401505587L;
	
	@Autowired
	private GenericDao genericDao;
	
	@Transactional(readOnly = true)
	public <C extends Modelo> List<C> findByExample(C example) {
		return genericDao.findByExample(example);
	}

	

}
