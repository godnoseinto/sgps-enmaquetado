package mx.ipn.escom.sgps.util.bs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import mx.ipn.escom.sgps.util.dao.GenericDao;

@Service("genericBs")
@Scope(value = BeanDefinition.SCOPE_SINGLETON)
public class GenericBs {
	/**
	 * Objeto singleton que permite realizar operaciones en la capa de DAO
	 */
	@Autowired
	protected GenericDao genericDao;
	
	@Autowired
	protected GenericSearchBs genericSearchBs;
}
