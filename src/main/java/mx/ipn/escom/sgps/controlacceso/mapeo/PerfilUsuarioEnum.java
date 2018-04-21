package mx.ipn.escom.sgps.controlacceso.mapeo;

public enum PerfilUsuarioEnum {
	LIDER_PROYECTO(1, "Lider de proyecto"), JEFE_O_GERENTE_AREA(2, "Jefe o gerente de área"), COLABORADOR(3,
			"Colaborador");

	private Integer idPerfil;

	private String nombre;

	private PerfilUsuarioEnum(Integer idPerfil, String nombre) {
		this.idPerfil = idPerfil;
		this.nombre = nombre;
	}

	public Integer getIdPerfil() {
		return idPerfil;
	}

	public String getNombre() {
		return nombre;
	}
}
