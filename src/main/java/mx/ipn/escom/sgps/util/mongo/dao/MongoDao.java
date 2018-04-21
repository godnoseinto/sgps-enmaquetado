/**
 * 
 */
package mx.ipn.escom.sgps.util.mongo.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.gridfs.GridFsTemplate;
import org.springframework.stereotype.Repository;

import com.mongodb.gridfs.GridFSDBFile;

import mx.ipn.escom.sgps.util.Archivo;

/**
 * Clase para pruebas de acceso a datos con MongoDB
 * 
 * @author CDT-ESCOM
 * @version 0.1-alpha "julio 12, 2017"
 */
@Repository("mongoDao")
public class MongoDao {

	/**
	 * Atributo para acceder a la colección de archivos en MongoDB
	 */
	@Autowired
	private GridFsTemplate gridFsTemplate;

	/**
	 * Método para almacenar en la base de datos MongoDB el archivo.
	 * 
	 * @param archivoSel
	 * @return
	 */
	public String save(Archivo archivoSel) {
		InputStream inputStream;
		try {
			inputStream = new FileInputStream(archivoSel.getFileUpload());
			return this.gridFsTemplate.store(inputStream, archivoSel.getFileUploadFileName()).getId().toString();
		} catch (FileNotFoundException e) {
			return null;
		}
	}

	/**
	 * Método para descargar el archivo de la base de datos.
	 * 
	 * @param id
	 * @return
	 */
	public File descargarArchivo(String id) {
		List<GridFSDBFile> result = gridFsTemplate.find(new Query(Criteria.where("_id").is(id)));
		for (GridFSDBFile gridFSDBFile : result) {
			if (gridFSDBFile.getId().toString().equals(id)) {
				File file = new File(gridFSDBFile.getFilename());
				try {
					gridFSDBFile.writeTo(file);
					return file;
				} catch (IOException e) {
					return null;
				}
			}
		}
		return null;
	}

	/**
	 * Método para eliminar documentos de la colección, eliminando el registro y
	 * su respectivo archivo.
	 * 
	 * @param model
	 */
	public void delete(String id) {
		gridFsTemplate.delete(new Query(Criteria.where("_id").is(id)));
	}

	/*
	 * Metodo que regresa el nombre de un archivo dado su ID
	 */
	public String getStoredFilename(String id) {
		GridFSDBFile gridFSDBFile = gridFsTemplate.find(new Query(Criteria.where("_id").is(id))).get(0);
		return gridFSDBFile.getFilename();
	}
}
