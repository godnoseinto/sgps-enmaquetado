/**
 * 
 */
package mx.ipn.escom.sgps.util.mongo.bs;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mx.ipn.escom.sgps.util.Archivo;
import mx.ipn.escom.sgps.util.mongo.dao.MongoDao;

/**
 * Clase para implementar logica de negocio usando MongoDB
 * 
 * @author CDT-ESCOM
 * @version 0.1-alpha "julio 12, 2017"
 */
@Service("mongoBs")
@Scope(value = BeanDefinition.SCOPE_SINGLETON)
public class MongoBs implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -155680841350117033L;

	/*
	 * Atributo para acceder a los datos.
	 */
	@Autowired
	public MongoDao mongoDao;

	/**
	 * Constructor por defecto
	 */
	public MongoBs() {
		super();
	}

	/**
	 * Método para persistir la información en {@link MongoFile}
	 * 
	 * @param model
	 */
	@Transactional(rollbackFor = Exception.class)
	public String save(Archivo archivoSel) {
		return mongoDao.save(archivoSel);
	}

	/**
	 * Método para descargar archivos de MongoDB
	 */
	public File descargarArchivo(String id) {
		return mongoDao.descargarArchivo(id);
	}

	/**
	 * Metodo para obtener el nombre de un archivo en Mongo
	 */
	public String getStoredFilename(String id) {
		return mongoDao.getStoredFilename(id);
	}

	/**
	 * Método para eliminar archivos de la base de datos MongoDB
	 * 
	 * @param model
	 */
	@Transactional(rollbackFor = Exception.class)
	public void delete(String id) {
		mongoDao.delete(id);
	}

	/**
	 * Regresa un objeto archivo, que obtiene de la base de datos (de acuerdo a
	 * un id dado) con las dos cosas que nececita (un FileInputStream y un
	 * nombre) para ser vizualizados en una nueva pestaña en el navegador,
	 * usando un metodo que regrese el HttpHeaders
	 * 
	 * @param idArchivoDescargar
	 * @return el archivo con la informacion
	 * @throws FileNotFoundException
	 */
	public Archivo obtenerArchivoVisualizar(String idArchivoDescargar) throws FileNotFoundException {
		Archivo archivoVisualizar = new Archivo();
		archivoVisualizar.setFileInputStream(new FileInputStream(descargarArchivo(idArchivoDescargar)));
		archivoVisualizar.setFileUploadFileName(getStoredFilename(idArchivoDescargar));
		return archivoVisualizar;
	}

	/**** Getters & Setters ****/

	/**
	 * @return the mongoDao
	 */
	public MongoDao getMongoDao() {
		return mongoDao;
	}

	/**
	 * @param mongoDao
	 *            the mongoDao to set
	 */
	public void setMongoDao(MongoDao mongoDao) {
		this.mongoDao = mongoDao;
	}

}
