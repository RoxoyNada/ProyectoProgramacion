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
	
	public boolean eliminarCliente( int id) {
		Boolean correcto = false;
		String sql = "DELETE FROM clientes where idCliente = '"+id+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			correcto = true;
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return correcto;
	}
	
	public boolean altaDisco(Disco d) {
		Boolean correcto = false;
		String sql = "Insert INTO discos set nombre = '"+d.getNombre()+"' , idGrup = '"+d.getIdGrupo()+"' , fecha = '"+d.getFecha()+"' , precio = '"+d.getPrecio()+"', descripcion = '"+d.getDescripcion()+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			correcto = true;
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return correcto;
	}
	
	public boolean altaCliente(Cliente c) {
		Boolean correcto = false;
		String sql = "Insert INTO clientes set nombre = '"+c.getNombre()+"' , apellidos = '"+c.getApellidos()+"' , dni = '"+c.getDni()+"' , direccion = '"+c.getDireccion()+"', telefono = '"+c.getTelefono()+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			correcto = true;
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return correcto;
	}
	
	public void altaVenta(Venta v) {
		String sql = "Insert INTO ventas set fechaVenta = '"+v.getFechaVenta()+"' , idCliente = '"+v.getIdCliente()+"' , precioVenta = '"+v.getPrecioVenta()+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void altaGrupo(Grupo g) {
		String sql = "Insert INTO grupos set nombre = '"+g.getNombre()+"' , pais = '"+g.getPais()+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block*/
			e.printStackTrace();
		}
	}
	
	public void altaCancion(Cancion c) {
		String sql = "Insert INTO canciones set titulo = '"+c.getTitulo()+"' , duracion = '"+c.getDuracion()+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block*/
			e.printStackTrace();
		}
	}
	
	public void altaLVenta(LVenta l) {
		String sql = "Insert INTO lventas set idVenta = '"+l.getIdVenta()+"' , idDisco = '"+l.getIdDisco()+"' , precioLinea = '"+l.getPrecioLinea()+"' , unidades = '"+l.getUnidades()+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block*/
			e.printStackTrace();
		}
	}
	
	public void altaEsta(int idCancion, int idDisco) {
		String sql = "Insert INTO esta set idDisco = '"+idDisco+"' , idCancion = '"+idCancion+"'/";
		try {
			Statement myStatement = this.conexion.createStatement();
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void bajaDisco(int idDisco) {
		String sql = "DELETE FROM  discos WHERE  idDisco = '"+idDisco+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void bajaCliente(int idCliente) {
		String sql = "DELETE FROM  clientes WHERE  idCliente = '"+idCliente+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean existeDisco(int idDisco) {
		String sql = "select * FROM  discos WHERE  idDisco = '"+idDisco+"'";
		boolean esta = false;
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				esta = true;
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return esta;
	}
	
	public boolean existeGrupo(int idGrupo) {
		String sql = "select * FROM  grupos WHERE  idGrupo = '"+idGrupo+"'";
		boolean esta = false;
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				esta = true;
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return esta;
	}
	
	public boolean existeCancion(int idCancion) {
		String sql = "select * FROM  canciones WHERE  idCancion = '"+idCancion+"'";
		boolean esta = false;
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				esta = true;
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return esta;
	}
	
	public boolean existeCliente(int idCliente) {
		String sql = "select * FROM  clientes WHERE  idCliente = '"+idCliente+"'";
		boolean esta = false;
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				esta = true;
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return esta;
	}
	
	public boolean existeVenta(int idVenta) {
		String sql = "select * FROM  ventas WHERE  idVenta = '"+idVenta+"'";
		boolean esta = false;
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				esta = true;
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return esta;
	}
	
	public boolean modificarCliente(Cliente c) {
		Boolean correcto = false;
		String sql = "UPDATE clientes set nombre = '"+ c.getNombre()+"', apellidos = '"+ c.getApellidos()+"' , direccion = '"+ c.getDireccion()+"', dni = '"+ c.getDni()+"', telefono = '"+ c.getTelefono()+"' WHERE idCliente = '"+ c.getIdCliente()+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			correcto = true;
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return correcto;
	}
	
	public boolean modificarDisco(Disco d) {
		Boolean correcto = false;
		String sql = "UPDATE discos set nombre = '"+ d.getNombre()+"', fecha = '"+ d.getFecha()+"' , igGrup = '"+ d.getIdGrupo()+"', precio = '"+ d.getPrecio()+"', descripcion = '"+ d.getDescripcion()+"' WHERE idDisco = '"+ d.getIdDisco()+"'";
		try {
			Statement myStatement = this.conexion.createStatement();
			correcto = true;
			myStatement.execute(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return correcto;
	}
	
	public ArrayList<Venta> dameVentasCliente(int idCliente) {
		String sql = "SELECT * FROM ventas WHERE idClieente = '"+idCliente+"'"; 
		ArrayList<Venta> ventas = new ArrayList<Venta>();
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while (rs.next()) {
				int idVenta = rs.getInt("idVenta");
				Venta venta = new Venta(idVenta, rs.getString("fechaVenta"),rs.getInt("idCliente"), rs.getFloat("precioVenta"), dameLventasDisco(idVenta));
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
	
	public ArrayList<Disco> dameDiscosAnno(int anno){
		ArrayList<Disco> discos = new ArrayList<Disco>();
		String sql = "Select * FROM discos WHERE YEAR (discos.fecha) = "+anno;
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
	
	public ArrayList<Disco> dameDiscosRecientes(){
		ArrayList<Disco> discos = new ArrayList<Disco>();
		String sql = "Select * FROM discos  ORDER BY discos.fecha desc ";
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
	
	public ArrayList<Disco> dameDiscosRangoPrecio(int precioMin, int precioMax){
		ArrayList<Disco> discos = new ArrayList<Disco>();
		String sql = "SELECT * FROM discos WHERE precio BETWEEN '"+precioMin+"' and '"+precioMax+"'";
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
	
	public int dameNumDiscosGrupo(int idGrup) {
		String sql = "SELECT COUNT(*) FROM discos WHERE idGrup ="+idGrup;
		int cantidad = 0;
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {
				cantidad = rs.getInt("suma");
			}
			rs.close();
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cantidad;
	}
	
	public ArrayList<LVenta> dameLVentasDisco(int idDisco){
		ArrayList<LVenta> lventas = new ArrayList<LVenta>();
		String sql = "Select * FROM lventas WHERE idDisco = '"+idDisco+"' order by idVenta";
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
	
	public Cliente dameCliente(int id) {
		Cliente cliente = new Cliente();
		
		return cliente;
	}
	
	public ArrayList<Venta> todosVentas(){
		ArrayList<Venta> ventas = new ArrayList<Venta>();
		String sql = "Select * FROM ventas";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {
				int idVenta = rs.getInt("idVenta");
				Venta venta = new Venta(idVenta, rs.getString("fechaVenta"),rs.getInt("idCliente"), rs.getFloat("precioVenta"), dameLventasDisco(idVenta));
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
	
	public ArrayList<LVenta> dameLventasDisco(int idVenta){
		ArrayList<LVenta> lventas = new ArrayList<LVenta>();
		String sql = "Select * FROM lventas WHERE idVenta = '"+idVenta+"'";
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
		String sql = "select discos.* from discos inner join lventas as l on discos.idDisco = l.idDisco GROUP BY l.idDisco ORDER BY (sum(l.unidades)) DESC limit '"+numero+"')";
		
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