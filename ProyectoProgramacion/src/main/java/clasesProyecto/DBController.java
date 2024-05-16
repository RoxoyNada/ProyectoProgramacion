package clasesProyecto;
import java.util.*;
import java.sql.*;

public class DBController {

	private Connection conexion;

	/**
	 * 
	 */
	public DBController() {
		super();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated constructor stub
		try {
			this.conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto", "root", "");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en el constructor del BDConttroller" + e.getMessage());
		}

	}

	public DBController(Connection conexion) {
		super();
		this.conexion = conexion;
	}


	
	public Connection getConexion() {
		return conexion;
	}

	public void setConexion(Connection conexion) {
		this.conexion = conexion;
	}
	
	
	public ArrayList<Disco> todosDiscos(){
		ArrayList<Disco> discos = new ArrayList<Disco>();
		String sql = "Select * FROM discos";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {
				Disco disco = new Disco (rs.getInt("idDisco"), rs.getString("nombre"), rs.getString("fecha"), rs.getInt("idGrup"), rs.getFloat("precio"), rs.getString("descripcion"));
				discos.add(disco);
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return discos;
	}
	
	public ArrayList<Cancion> todasCanciones(){
		ArrayList<Cancion> canciones = new ArrayList<Cancion>();
		String sql = "Select * FROM canciones";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {
				Cancion cancion = new Cancion(rs.getInt("cod"), rs.getString("titulo"), rs.getDouble("duracion"));
				canciones.add(cancion);
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return canciones;
	}
	
	public ArrayList<Cliente> todosClientes(){
		ArrayList<Cliente> clientes = new ArrayList<Cliente>();
		String sql = "Select * FROM clientes";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {
				Cliente cliente = new Cliente(rs.getInt("idCliente"), rs.getString("dni"),rs.getString("nombre"), rs.getString("apellidos"), rs.getString("direccion"), rs.getString("telefono"));
				clientes.add(cliente);
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return clientes;
	}
	
	public ArrayList<Venta> todosVentas(){
		ArrayList<Venta> ventas = new ArrayList<Venta>();
		String sql = "Select * FROM ventas";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {
				int idVenta = rs.getInt("idVenta");
				Venta venta = new Venta(idVenta, rs.getString("fechaVenta"),rs.getInt("idCliente"), rs.getFloat("precioVenta"), lineasVenta(idVenta));
				ventas.add(venta);
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ventas;
	}
	
	public ArrayList<Grupo> todosGrupos(){
		ArrayList<Grupo> grupos = new ArrayList<Grupo>();
		String sql = "Select * FROM grupos";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {
				Grupo grupo = new Grupo(rs.getInt("idGrupo"), rs.getString("nombre"),rs.getString("pais"));
				grupos.add(grupo);
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return grupos;
	}
	
	public ArrayList<LVenta> lineasVenta(int idVenta){
		ArrayList<LVenta> lventas = new ArrayList<LVenta>();
		String sql = "Select * FROM lventas WHERE idLVenta = '"+idVenta+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {
				
				LVenta lventa = new LVenta(rs.getInt("idLVenta"), rs.getInt("idVenta"), rs.getInt("unidades"),rs.getFloat("precioLinea"),rs.getInt("idDiscos"));
				lventas.add(lventa);
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return lventas;
	}
	
	public ArrayList<Disco> nDiscosMasVendidos(int numero) {
		ArrayList<Disco> discos = new ArrayList<Disco>();
		String sql = "SELECT nombre FROM discos WHERE idDisco in (select l.idDisco from lventas as l GROUP BY l.idDisco ORDER BY (sum(l.unidades)) DESC limit '"+numero+"')";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {
				Disco disco = new Disco (rs.getInt("idDisco"), rs.getString("nombre"), rs.getString("fecha"), rs.getInt("idGrup"), rs.getFloat("precio"), rs.getString("descripcion"));
				discos.add(disco);
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return discos;
	}
	
	
}