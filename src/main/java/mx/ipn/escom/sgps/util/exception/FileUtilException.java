package mx.ipn.escom.sgps.util.exception;

/**
 * 
 * @author Carlos Ivan Calva Avalos 14-09-2017
 *
 */
public class FileUtilException extends Exception {

	private static final long serialVersionUID = 1L;

	/**
	 * Enum para los tipos de excepciones que podrian generarse al trabajar con
	 * la manipulacion de archivos que se quieran base de datos de Mongo. @1)
	 * NULL_FILE = si el supesto archivo esta vacio. @2) CONTENT_TYPE = si se
	 * esta dando un tipo de archivo diferente a los especificados. @3)
	 * FILE_SIZE = si se sobrepasa el tamaño determinado para un archivo. @4)
	 * EMPTY_NAME = si el archivo no tiene un nombre de archivo (para evitar
	 * guardarse archivos sin nombres en la base de datos).
	 *
	 */
	public enum ArchivoExcepcion {
		NULL_FILE(1), CONTENT_TYPE(2), FILE_SIZE(3), EMPTY_NAME(4);

		private Integer id;

		private ArchivoExcepcion(Integer id) {
			this.id = id;
		}

		public Integer getId() {
			return id;
		}
	}

	private ArchivoExcepcion archivoExcepcion;

	/*
	 * Seccion de constructores y metodos heredados
	 */

	public FileUtilException(mx.ipn.escom.sgps.util.exception.FileUtilException.ArchivoExcepcion archivoExcepcion) {
		super();
		this.archivoExcepcion = archivoExcepcion;
	}

	public FileUtilException() {
		super();
	}

	public FileUtilException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public FileUtilException(String message, Throwable cause) {
		super(message, cause);
	}

	public FileUtilException(String message) {
		super(message);
	}

	public FileUtilException(Throwable cause) {
		super(cause);
	}

	/*
	 * Seccion de getters y Setters
	 */

	public ArchivoExcepcion getArchivoExcepcion() {
		return archivoExcepcion;
	}

	public void setArchivoExcepcion(ArchivoExcepcion archivoExcepcion) {
		this.archivoExcepcion = archivoExcepcion;
	}

}