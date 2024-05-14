package clasesProyecto;

public class Grupo {
	private int idGrupo;
	private String nombre;
	private String pais;

	public Grupo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Grupo(int idGrupo, String nombre, String pais) {
		super();
		this.idGrupo = idGrupo;
		this.nombre = nombre;
		this.pais = pais;
	}

	public int getIdGrupo() {
		return idGrupo;
	}

	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

}
