package clasesProyecto;
import java.sql.Date;
import java.util.ArrayList;

public class Venta {

	private int idVenta;
	private String fechaVenta;
	private int idCliente;
	private Float precioVenta;
	private ArrayList<LVenta> Lventas;

	public Venta(int idVenta, String fechaVenta, int idCliente, Float precioVenta, ArrayList<LVenta> lventas) {
		super();
		this.idVenta = idVenta;
		this.fechaVenta = fechaVenta;
		this.idCliente = idCliente;
		this.precioVenta = precioVenta;
		Lventas = lventas;
	}

	public Venta() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getIdVenta() {
		return idVenta;
	}

	public void setIdVenta(int idVenta) {
		this.idVenta = idVenta;
	}

	public String getFechaVenta() {
		return fechaVenta;
	}

	public void setFechaVenta(String fechaVenta) {
		this.fechaVenta = fechaVenta;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public Float getPrecioVenta() {
		return precioVenta;
	}

	public void setPrecioVenta(Float precioVenta) {
		this.precioVenta = precioVenta;
	}

}
