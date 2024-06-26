<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="clasesProyecto.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proyecto Programacion</title>
</head>
<body>
<%  
String pagina = request.getParameter("pagina");
DBController  controlador = new DBController();
String resultado = "";
boolean correcto = false;

if(pagina.equalsIgnoreCase("clientesAdmin")){
	String opcion = request.getParameter("accion");
	
	if(opcion.equalsIgnoreCase("eliminar")){ //eliminar cliente
		String codigo = request.getParameter("codCliente");
		int codCliente = Integer.parseInt(codigo);
		if(controlador.existeCliente(codCliente)){
			correcto = controlador.eliminarCliente(codCliente);
			if(correcto){
				resultado = "Se ha eliminado correctamente";
			}else{
				resultado = "No se ha eliminado correctamente";
			}
		}
		String destino = "clientes.jsp?resultado="+ resultado;
		response.sendRedirect(destino);
		
	}else if(opcion.equalsIgnoreCase("alta")){ //a�adir cliente
		
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		String dni = request.getParameter("dni");
		Cliente  c = new Cliente(0, dni, nombre, apellidos,  direccion, telefono);
		correcto = controlador.altaCliente(c);
		if(c.datosCompletos()){
			if(correcto){
				resultado = "Se ha dado de alta correctamente";
			}else{
				resultado = "No se ha dado de alta correctamente";
			}
		}else{
			resultado = "Faltan campos por rellenar";
		}
		
		String destino = "clientesAdmin.jsp?resultado="+ resultado;
		response.sendRedirect(destino);
	}else{
		String codigo = request.getParameter("codCliente");
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		String dni = request.getParameter("dni");
		int codCliente = Integer.parseInt(codigo);
		Cliente  c = new Cliente(codCliente, dni, nombre, apellidos,  direccion, telefono);
		correcto = controlador.modificarCliente(c);
		if(c.datosCompletos()){
			if(correcto){
				resultado = "Se ha modificado correctamente";
			}else{
				resultado = "No se ha modificado correctamente";
			}
		}else{
			resultado = "Faltan campos por rellenar";
		}
		
		String destino = "clientesAdmin.jsp?resultado="+ resultado;
		response.sendRedirect(destino);
	}
	
	
	
	
	
}else if(pagina.equalsIgnoreCase("discosAdmin")){
	String opcion = request.getParameter("accion");
	if(opcion.equalsIgnoreCase("eliminar")){ //eliminar disco
		String codigo = request.getParameter("idDisco");
		int codDisco = Integer.parseInt(codigo);
		if(controlador.existeDisco(codDisco)){
			controlador.bajaDisco(codDisco);
		}
		String destino = "discosAdmin.jsp?pagina=operaciones.jsp&resultado=" + correcto;
		response.sendRedirect(destino);
		
	}else{ //a�adir disco 
		String codigo = request.getParameter("idDisco");
		int codDisco = Integer.parseInt(codigo);
		if(controlador.existeDisco(codDisco) == false){
			String nombre = request.getParameter("nombre");
			float precio = Float.parseFloat(request.getParameter("precio")) ;
			String descripcion = request.getParameter("descripcion");
			String fecha = request.getParameter("fecha");
			int idGrupo = Integer.parseInt(request.getParameter("idGrupo")) ;
			Disco d = new Disco(0, nombre, fecha,idGrupo,precio, descripcion);
			correcto = controlador.altaDisco(d);
		}
		
		String destino = "discosAdmin.jsp?pagina=operaciones.jsp&resultado=" + correcto;
		response.sendRedirect(destino);
	}
	
}else if(pagina.equalsIgnoreCase("ventas.jsp")){
	String opcion = request.getParameter("accion");
	if(opcion.equalsIgnoreCase("eliminar")){
		String codigo = request.getParameter("codVenta");
		int codVenta = Integer.parseInt(codigo);
		if(controlador.existeVenta(codVenta)){
			controlador.eliminarCliente(codVenta);
		}
		
		String destino = "ventas.jsp?pagina=operaciones.jsp&resultado=" + correcto;
	}else{
		
		
		String destino = "ventas.jsp?pagina=operaciones.jsp&resultado=" + correcto;
	}
	
}else if(pagina.equalsIgnoreCase("modificarCliente.jsp")){
	
	String codigo = request.getParameter("codCliente");
	int codCliente = Integer.parseInt(codigo);
	if(controlador.existeCliente(codCliente) == false){
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		String dni = request.getParameter("dni");
		Cliente  c = new Cliente(codCliente, dni, nombre, apellidos,  direccion, telefono);
		correcto = controlador.modificarCliente(c);
	}
	
	String destino = "clientesAdmin.jsp?pagina=operaciones.jsp&resultado=" + correcto;
	response.sendRedirect(destino);
	
	
}else if(pagina.equalsIgnoreCase("modificarDisco.jsp")){
	String codigo = request.getParameter("codProducto");
	int codProducto = Integer.parseInt(codigo);
	if(controlador.existeCliente(codProducto) == false){
		String nombre = request.getParameter("nombre");
		float precio = Float.parseFloat(request.getParameter("precio")) ;
		String descripcion = request.getParameter("descripcion");
		String fecha = request.getParameter("fecha");
		int idGrupo = Integer.parseInt(request.getParameter("idGrupo")) ;
		Disco d = new Disco(codProducto, nombre, fecha,idGrupo,precio, descripcion);
		correcto = controlador.modificarDisco(d);
	}
	
	String destino = "discosAdmin.jsp?pagina=operaciones.jsp&resultado=" + correcto;
	response.sendRedirect(destino);
}



%>


</body>
</html>