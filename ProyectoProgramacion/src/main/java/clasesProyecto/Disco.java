package clasesProyecto;
import java.sql.Date;

public class Disco {

	private int idDisco;
	private String nombre;
	private String fecha;

//	PROBAR
//	private Date fecha2; 

	private int idGrup;
	private Float precio;
	private String descripcion;

	public Disco() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Disco(int idDisco, String nombre, String fecha, int idGrupo, Float precio, String descripcion) {
		super();
		this.idDisco = idDisco;
		this.nombre = nombre;
		this.fecha = fecha;
		this.idGrup = idGrupo;
		this.precio = precio;
		this.descripcion = descripcion;
	}

	public int getIdDisco() {
		return idDisco;
	}

	public void setIdDisco(int idDisco) {
		this.idDisco = idDisco;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public int getIdGrupo() {
		return idGrup;
	}

	public void setIdGrupo(int idGrupo) {
		this.idGrup = idGrupo;
	}

	public Float getPrecio() {
		return precio;
	}

	public void setPrecio(Float precio) {
		this.precio = precio;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

}
