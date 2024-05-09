package clasesProyecto;

public class Cancion {

	private int cod;
	private String titulo;
	private Double duracion;

	public Cancion() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cancion(int cod, String titulo, Double duracion) {
		super();
		this.cod = cod;
		this.titulo = titulo;
		this.duracion = duracion;
	}

	public int getCod() {
		return cod;
	}

	public void setCod(int cod) {
		this.cod = cod;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Double getDuracion() {
		return duracion;
	}

	public void setDuracion(Double duracion) {
		this.duracion = duracion;
	}

	@Override
	public String toString() {
		return "Cancion [cod=" + cod + ", titulo=" + titulo + ", duracion=" + duracion + "]";
	}

}
