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

if(pagina.equalsIgnoreCase("clientes.jsp")){
	String opcion = request.getParameter("accion");
	
	if(opcion.equalsIgnoreCase("eliminar")){ //eliminar cliente
		String codigo = request.getParameter("codCliente");
		int codCliente = Integer.parseInt(codigo);
		if(controlador.existeCliente(codCliente)){
			correcto = controlador.eliminarCliente(codCliente);
		}
		String destino = "clientes.jsp?pagina=operaciones.jsp&resultado =" + correcto;
		response.sendRedirect(destino);
		
	}else{ //añadir cliente
		String codigo = request.getParameter("codCliente");
		int codCliente = Integer.parseInt(codigo);
		if(controlador.existeCliente(codCliente) == false){
			String nombre = request.getParameter("nombre");
			String apellidos = request.getParameter("apellidos");
			String direccion = request.getParameter("direccion");
			String telefono = request.getParameter("telefono");
			String dni = request.getParameter("dni");
			Cliente  c = new Cliente(0, dni, nombre, apellidos,  direccion, telefono);
			correcto = controlador.altaCliente(c);
		}
		
		String destino = "clientes.jsp?pagina=operaciones.jsp&resultado =" + correcto;
		response.sendRedirect(destino);
	}
	
}else if(pagina.equalsIgnoreCase("productos.jsp")){
	String opcion = request.getParameter("accion");
	if(opcion.equalsIgnoreCase("eliminar")){ //eliminar producto
		String codigo = request.getParameter("codProducto");
		int codDisco = Integer.parseInt(codigo);
		if(controlador.existeDisco(codDisco)){
			controlador.bajaDisco(codDisco);
		}
		String destino = "productos.jsp?pagina=operaciones.jsp&resultado =" + correcto;
		response.sendRedirect(destino);
		
	}else{ //añadir producto 
		String codigo = request.getParameter("codProducto");
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
		
		String destino = "productos.jsp?pagina=operaciones.jsp&resultado =" + correcto;
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
		
		String destino = "ventas.jsp?pagina=operaciones.jsp&resultado =" + correcto;
	}else{
		
		
		String destino = "ventas.jsp?pagina=operaciones.jsp&resultado =" + correcto;
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
	
	String destino = "modificarCliente.jsp?pagina=operaciones.jsp&resultado =" + correcto;
	response.sendRedirect(destino);
	
	
}else if(pagina.equalsIgnoreCase("modificarProducto.jsp")){
	
	
	String destino = "modificarProducto.jsp?pagina=operaciones.jsp&resultado =" + correcto;
}



%>


</body>
</html>