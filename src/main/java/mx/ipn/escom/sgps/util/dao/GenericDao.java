package mx.ipn.escom.sgps.util.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.criterion.Example;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mx.ipn.escom.sgps.util.mapeo.Modelo;

@Repository("genericDao")
public class GenericDao {

	@PersistenceContext
	protected EntityManager entityManager;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Transactional(readOnly = true)
	public <C extends Modelo> List<C> findByExample(C example) {
		Session session = entityManager.unwrap(Session.class);
		return (List<C>) session.createCriteria(example.getClass()).add(Example.create(example)).list();

	}

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}	
}
