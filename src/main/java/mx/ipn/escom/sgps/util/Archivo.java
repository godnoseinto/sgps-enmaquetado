package mx.ipn.escom.sgps.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.Serializable;

public class Archivo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2778629277334743838L;

	/**
	 * Atributo que contiene al archivo que se adjunta al anexo
	 */
	private File fileUpload;

	/**
	 * Atributo que guarda el nombre del archivo que se adjunta
	 */
	private String fileUploadFileName;

	/**
	 * Atributo que guarda el tipo de formato del archivo que se adjunta
	 */
	private String fileUploadContentType;

	/**
	 * Atributo que permite guardar el estado de si ha sido modificado en un JSP
	 */
	private Boolean archivoModificado;

	/**
	 * Atributo que permite guardar el estado que permite vizualisar un archivo
	 * en un JSP
	 */
	private Boolean archivoVisualizar;

	/**
	 * Atributo que guarda el file del archivo como un stream, util cuando se
	 * pretende cargar el archivo para vizualizarse en un nuevo Http en el
	 * navegador
	 */
	private FileInputStream fileInputStream;

	/**
	 * Constructor sin parámetros
	 */
	public Archivo() {
		super();
	}

	/**
	 * Constructor para los parametros dados:
	 * 
	 * @param fileUpload
	 * @param fileUploadFileName
	 * @param fileUploadContentType
	 * @param fileInputStream
	 */
	public Archivo(File fileUpload, String fileUploadFileName, String fileUploadContentType,
			FileInputStream fileInputStream) {
		super();
		this.fileUpload = fileUpload;
		this.fileUploadFileName = fileUploadFileName;
		this.fileUploadContentType = fileUploadContentType;
		this.fileInputStream = fileInputStream;
	}

	/**
	 * Constructor para los parametros dados:
	 * 
	 * @param fileUpload
	 * @param fileUploadFileName
	 * @param fileUploadContentType
	 */
	public Archivo(File fileUpload, String fileUploadFileName, String fileUploadContentType) {
		super();
		this.fileUpload = fileUpload;
		this.fileUploadFileName = fileUploadFileName;
		this.fileUploadContentType = fileUploadContentType;
	}

	/**
	 * Constructor para los parametros dados:
	 * 
	 * @param idArchivo
	 * @param nombreArchivo
	 * @param archivoModificado
	 * @param archivoVisualizar
	 */
	public Archivo(String fileUploadFileName, Boolean archivoModificado, Boolean archivoVisualizar) {
		super();
		this.fileUploadFileName = fileUploadFileName;
		this.archivoModificado = archivoModificado;
		this.archivoVisualizar = archivoVisualizar;
	}

	/**
	 * Obtiene el valor del atributo fileUpload.
	 * 
	 * @return fileUpload
	 */
	public File getFileUpload() {
		return fileUpload;
	}

	/**
	 * Establece el valor del atributo fileUpload.
	 *
	 * @param fileUpload
	 */
	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

	/**
	 * Obtiene el valor del atributo fileUploadFileName.
	 * 
	 * @return fileUploadFileName
	 */
	public String getFileUploadFileName() {
		return fileUploadFileName;
	}

	/**
	 * Establece el valor del atributo fileUploadFileName.
	 *
	 * @param fileUploadFileName
	 */
	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	/**
	 * Obtiene el valor del atributo fileUploadContentType.
	 * 
	 * @return fileUploadContentType
	 */
	public String getFileUploadContentType() {
		return fileUploadContentType;
	}

	/**
	 * Establece el valor del atributo fileUploadContentType.
	 *
	 * @param fileUploadContentType
	 */
	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	/**
	 * @return the fileInputStream
	 */
	public FileInputStream getFileInputStream() {
		return fileInputStream;
	}

	/**
	 * @param fileInputStream
	 *            the fileInputStream to set
	 */
	public void setFileInputStream(FileInputStream fileInputStream) {
		this.fileInputStream = fileInputStream;
	}

	/**
	 * @return the archivoModificado
	 */
	public Boolean getArchivoModificado() {
		return archivoModificado;
	}

	/**
	 * @param archivoModificado
	 *            the archivoModificado to set
	 */
	public void setArchivoModificado(Boolean archivoModificado) {
		this.archivoModificado = archivoModificado;
	}

	/**
	 * @return the archivoVisualizar
	 */
	public Boolean getArchivoVisualizar() {
		return archivoVisualizar;
	}

	/**
	 * @param archivoVisualizar
	 *            the archivoVisualizar to set
	 */
	public void setArchivoVisualizar(Boolean archivoVisualizar) {
		this.archivoVisualizar = archivoVisualizar;
	}

}
