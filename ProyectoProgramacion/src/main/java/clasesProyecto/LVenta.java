package clasesProyecto;

public class LVenta {

	private int idLVenta;
	private int idVenta;
	private int unidades;
	private Float precioLinea;
	private int idDisco;

	public LVenta() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LVenta(int idLVenta, int idVenta, int unidades, Float precioLinea, int idDisco) {
		super();
		this.idLVenta = idLVenta;
		this.idVenta = idVenta;
		this.unidades = unidades;
		this.precioLinea = precioLinea;
		this.idDisco = idDisco;
	}

	public int getIdLVenta() {
		return idLVenta;
	}

	public void setIdLVenta(int idLVenta) {
		this.idLVenta = idLVenta;
	}

	public int getIdVenta() {
		return idVenta;
	}

	public void setIdVenta(int idVenta) {
		this.idVenta = idVenta;
	}

	public int getUnidades() {
		return unidades;
	}

	public void setUnidades(int unidades) {
		this.unidades = unidades;
	}

	public Float getPrecioLinea() {
		return precioLinea;
	}

	public void setPrecioLinea(Float precioLinea) {
		this.precioLinea = precioLinea;
	}

	public int getIdDisco() {
		return idDisco;
	}

	public void setIdDisco(int idDisco) {
		this.idDisco = idDisco;
	}

}
