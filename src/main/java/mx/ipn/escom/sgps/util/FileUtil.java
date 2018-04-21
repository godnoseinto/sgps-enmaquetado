package mx.ipn.escom.sgps.util;

import java.io.File;
import java.io.Serializable;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import mx.ipn.escom.sgps.util.exception.FileUtilException;
import mx.ipn.escom.sgps.util.mongo.bs.MongoBs;

/**
 * Clase de utileria que permitirá gestionar el manejo de archivos
 * 
 * @author
 * @version 1.0 "Sep 28, 2015"
 */
@Service("fileUtil")
@Scope(value = BeanDefinition.SCOPE_SINGLETON)
public class FileUtil implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9098027016633857460L;

	// Atributo para acceder a negocio para archivos almacenados en MongoDB
	@Autowired
	private MongoBs mongoBs;

	/**
	 * Instancia que permitirá escribir dentro del log de la aplicación
	 */
	@SuppressWarnings("unused")
	private static final Logger LOGGER = LoggerFactory.getLogger(FileUtil.class);

	/**
	 * 1 KB
	 */
	public static final long KB_1 = 1024L;
	/**
	 * 1 KB
	 */
	public static final long KB_100 = 102400L;

	/**
	 * 2 KB
	 */
	public static final long KB_2 = 2048L;

	/**
	 * 500 KB
	 */
	public static final long KB_500 = 512000L;

	/**
	 * 1 MB
	 */
	public static final long MB_1 = 1048576L;

	/**
	 * 2 MB
	 */
	public static final long MB_2 = 2097152L;

	/**
	 * Formato TXT
	 */
	public static final String TXT = "TXT";

	/**
	 * Formato PDF
	 */
	public static final String PDF = "PDF";

	/**
	 * Formato PNG
	 */
	public static final String PNG = "PNG";

	/**
	 * Formato JPG
	 */
	public static final String JPG = "JPG";

	/**
	 * Formato JPEG
	 */
	public static final String JPEG = "JPEG";

	/**
	 * Content-type para PDF
	 */
	public static final String FORMAT_PDF = "application/pdf";

	/**
	 * Content-type para PNG
	 */
	public static final String FORMAT_PNG = "image/png";

	/**
	 * Content-type para jpg
	 */
	public static final String FORMAT_JPG = "image/jpg";

	/**
	 * Content-type para jpeg
	 */
	public static final String FORMAT_JPEG = "image/jpeg";

	public static final String FORMAT_XLSX = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";

	/**
	 * Cosntructor por defecto
	 */
	private FileUtil() {
		super();
	}

	/**
	 * Metodo que guarda un archivo en la base de datos de mongo, llamando
	 * primero al metodo de validaciones de esta clase, pasandole los parametros
	 * que requiere y pudiendo arrojar lvalidarArchivoas excepciones pertinentes
	 * 
	 * @param archivo
	 * @param contentTypes
	 * @param bytesMaximos
	 * @return el nombre del identificador que genera Mongo al salvar el archivo
	 * @throws FileUtilException
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	public String guardarArchivo(Archivo archivo) {
		return mongoBs.save(archivo);

	}

	/**
	 * Metodo que actualiza un archivo dado que ya exista en la base de datos y
	 * que tenga un idArchivo que representa su identificador en la base de
	 * mongo. Se realizan nuevamente las validaciones correspondientes pudiendo
	 * arrojar excepciones. Elimina el archivo que estaba guardado previamente
	 * guarda el nuevo archivo. El metodo retorna el id del archivo actualizado.
	 * 
	 * @param archivo
	 * @param contentTypes
	 * @param bytesMaximos
	 * @param idArchivo
	 * @return el nombre del identificador que genera Mongo al salvar el archivo
	 * @throws FileUtilException
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	public String actualizarArchivo(Archivo archivo, String idArchivo) {
		eliminarArchivo(idArchivo);
		return mongoBs.save(archivo);
	}

	/**
	 * Metodo que elimina un archivo de la base de datos de mongo dada su
	 * idArchivo, que es el mismo id que lo representa en la base de datos de
	 * mongo
	 * 
	 * @param idArchivo
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	public void eliminarArchivo(String idArchivo) {
		mongoBs.delete(idArchivo);
	}

	/**
	 * Metodo que regresa el archivo (File) guardado en la base de datos de
	 * mongo, dado su idArchivo
	 * 
	 * @param idArchivo
	 * @return el archivo guardado en la base de datos
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	public File descargarArchivo(String idArchivo) {
		return mongoBs.descargarArchivo(idArchivo);
	}

	/**
	 * Metodo que refresa el nombre del archivo guardado en la base de datos de
	 * mongo, dado su idArchivo
	 * 
	 * @param idArchivo
	 * @return el nombre de archivo guardado en la base de datos
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	public String obtenerNombreArchivo(String idArchivo) {
		return mongoBs.getStoredFilename(idArchivo);
	}

	/**
	 * Metodo que hace las validaciones de un archivo que se pretende guardar en
	 * la base de datos de Mongo. Hace las validaciones con metodos privados de
	 * esta clase que arrojan excepciones. Este metodo arroja tambien dichas
	 * excepciones.
	 * 
	 * @param archivo
	 * @param contentTypes
	 * @param bytesMaximos
	 * @throws FileUtilException
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	public static void validarArchivo(Archivo archivo, List<String> contentTypes, long bytesMaximos)
			throws FileUtilException {
		fileIsNull(archivo);
		invalidContentType(contentTypes, archivo);
		sizeInRange(archivo, bytesMaximos);
		emptyFileName(archivo);
	}

	/**
	 * Comprueba que un archivo no este vacio, de estarlo arroja una excepcions
	 * 
	 * @param archivo
	 * @throws FileUtilException
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	private static void fileIsNull(Archivo archivo) throws FileUtilException {
		if (archivo == null) {
			throw new FileUtilException(FileUtilException.ArchivoExcepcion.NULL_FILE);
		} else {
			if (archivo.getFileUpload() == null) {
				throw new FileUtilException(FileUtilException.ArchivoExcepcion.NULL_FILE);
			}
		}
	}

	/**
	 * 
	 * Comprueba que un archivo tenga un valor de contentType dentro de una
	 * lista de contentTypes validos
	 * 
	 * @param contentTypes
	 * @param archivo
	 * @throws FileUtilException
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	private static void invalidContentType(List<String> contentTypes, Archivo archivo) throws FileUtilException {
		if (!contentTypes.contains(archivo.getFileUploadContentType())) {
			throw new FileUtilException(FileUtilException.ArchivoExcepcion.CONTENT_TYPE);
		}
	}

	/**
	 * Comprueba que el tamaño en bytes de un archivo no supere un limite maximo
	 * determinado. Es importante recordar que 1 MB = 1048576 Bytes
	 * 
	 * @param archivo
	 * @param bytesMaximos
	 * @throws FileUtilException
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	private static void sizeInRange(Archivo archivo, long bytesMaximos) throws FileUtilException {
		if (archivo.getFileUpload().length() > bytesMaximos) {
			throw new FileUtilException(FileUtilException.ArchivoExcepcion.FILE_SIZE);
		}
	}

	/**
	 * Comprueba que el nombre de un archivo no este vacio. Se considera que el
	 * nombre es lo que esta antes del ultimo punto ('.' <el punto de extension>
	 * en el nombre del archivo
	 * 
	 * @param archivo
	 * @throws FileUtilException
	 * 
	 * @author Carlos Ivan 14-09-2017
	 */
	private static void emptyFileName(Archivo archivo) throws FileUtilException {
		if (archivo.getFileUploadFileName().substring(0, archivo.getFileUploadFileName().lastIndexOf('.')).isEmpty()) {
			throw new FileUtilException(FileUtilException.ArchivoExcepcion.EMPTY_NAME);
		}
	}

}
