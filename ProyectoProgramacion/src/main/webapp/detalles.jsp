<%@page import="com.mysql.fabric.xmlrpc.base.Array"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="clasesProyecto.*"%>
       <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>

<% DBController controlador = new DBController();
int idDisco = Integer.parseInt(request.getParameter("idDisco")) ;
Disco d = controlador.dameDisco(idDisco); %>
<head>
    <meta charset="utf-8">
    <title>MultiShop - Online Shop Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
    
    <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
        <div class="col-lg-4">
            <a href="" class="text-decoration-none">
                <span class="h1 text-uppercase text-primary bg-dark px-2">Ayerdi</span>
                <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Records</span>
            </a>
        </div>
        <div class="col-lg-4 col-6 text-left">
            <form action="">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Busqueda de Productos">
                    <div class="input-group-append">
                        <span class="input-group-text bg-transparent text-primary">
                            <i class="fa fa-search"></i>
                        </span>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-4 col-6 text-right">
            <p class="m-0">Atención Al Cliente</p>
            <h5 class="m-0">+34 646 26 58 52</h5>
        </div>
    </div>
</div>
<!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <span class="h1 text-uppercase text-dark bg-light px-2">Multi</span>
                        <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="index.jsp" class="nav-item nav-link active">Home</a>
                            <a href="tienda.html" class="nav-item nav-link">Productos</a>
                            <a href="clientes.html" class="nav-item nav-link">Nuestros Clientes</a>
                            <a href="ventas.html" class="nav-item nav-link">Ventas</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Administración <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
                                    <a href="clientesAdmin.html" class="dropdown-item">Clientes</a>
                                    <a href="discosAdmin.html" class="dropdown-item">Discos</a>
                                </div>
                            </div>
                        </div>         
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Breadcrumb Start -->
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item text-dark" href="index2.html">Home</a>
                    <a class="breadcrumb-item text-dark" href="tienda.html">Tienda</a>
                    <span class="breadcrumb-item active">Detalles</span>
                </nav>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->


	
    <!-- Shop Detail Start -->
    <div class="container-fluid pb-5">
        <div class="row px-xl-5">
            <div class="col-lg-5 mb-30">
                <div id="product-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner bg-light">
                        <div class="carousel-item active" style="display: flex;">
                            <img class="w-70 h-70" style="margin: 0 auto;"  src="./img/<%=d.getIdDisco()%>.jpg" alt="Image">
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-7 h-auto mb-30">
                <div class="h-100 bg-light p-30">
                    <!-- CODIGO JAVA -->
                    <!-- DATOS PRODUCTO -->
                   
                    <h3><%=d.getNombre()%></h3>
                    <h6><%=controlador.dameGrupo(d.getIdGrupo()).getNombre()%> <%=d.getFecha()%></h6>
                    <% int desc = controlador.dameDescuentoDisco(idDisco); %>
                    <h3 class="font-weight-semi-bold mb-4"><%=d.getPrecio() - (d.getPrecio() * desc / 100)%>$</h3>
                    <p class="mb-4"><%=d.getDescripcion() %></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row px-xl-5">
            <div class="col">
                <div class="bg-light p-30">
                    <div class="nav nav-tabs mb-4">
                        <a class="nav-item nav-link text-dark active" data-toggle="tab" href="#tab-pane-1">Lineas de venta</a>
                    </div>
                    <div class="tab-content">
                        <div class="custom-table-container">
                            <table class="custom-table">
                                <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>Unidades</th>
                                        <th>Precio de Linea</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- CODIGO JAVA -->
                                    <!-- LINEAS VENTA IDPRODUCTO-->
                                    <% ArrayList<LVenta> lVentas = controlador.dameLVentasDisco(idDisco); 
                                    for(int i=0; i< lVentas.size(); i++){%>
                                    <tr>
                                        <td><%=controlador.dameVenta(lVentas.get(i).getIdVenta()).getFechaVenta() %></td>
                                        <td><%=lVentas.get(i).getUnidades() %></td>
                                        <td><%=lVentas.get(i).getPrecioLinea() %></td>
                                    </tr>
                                    <%} %>
                                     
                                </tbody>
                            </table>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Detail End -->


    <!-- Products Start -->
    <div class="container-fluid py-5">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Otros Productos Que te Podrian Interesar</span></h2>
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel related-carousel">
                    <!-- CODIGO JAVA -->
                    <!-- BUCLE 5 veces cambiar img src en cada iteración -->
                    <% ArrayList<Disco> discos = controlador.todosDiscos(); 
                    for (Disco ds : discos){%>
                    <div class="product-item bg-light">
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="./img/<%=ds.getIdDisco()%>.jpg" alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square" href="detalles.jsp?idDisco=<%=ds.getIdDisco()%>"><i class="far fa-eye"></i></a>
                  <!--              <a class="btn btn-outline-dark btn-square" href=""><i class="fas fa-edit"></i></a>
                                <a class="btn btn-outline-dark btn-square" href=""><i class="fas fa-trash"></i></a>  -->  
                            </div>
                        </div>
                        <div class="text-center py-4">
                            <a class="h6 text-decoration-none text-truncate" href=""><%=ds.getNombre() %></a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                                <%  desc = controlador.dameDescuentoDisco(ds.getIdDisco()); %>
                       		 <% if (desc > 0){ %>
                            <h5><%=ds.getPrecio() - (ds.getPrecio() * desc / 100)%>$</h5><h6 class="text-muted ml-2"><del><%=ds.getPrecio()%>$</del></h6>
                            <%}else{ %>
                            	<h5><%=ds.getPrecio() %>$</h5>
                            <%} %>
                            </div>
                        </div>
                    </div>
                    <%} %>
                </div> 
            </div>
        </div>
    </div>
    <!-- Products End -->

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-secondary mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <h5 class="text-secondary text-uppercase mb-4">¿Quienes Somos?</h5>
                <p class="mb-4">Bienvenidos a Ayerdi Records: Tu destino para vinilos, CDs y ediciones especiales. Descubre la banda sonora de tus recuerdos con nosotros.  </p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Calle Donoso Cortés, 61</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>iayerdi@centronelson.org</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>rfernandez@centronelson.org</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+34 646 26 58 52</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Quick Shop</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="index.jsp"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-secondary mb-2" href="tienda.html"><i class="fa fa-angle-right mr-2"></i>Productos</a>
                            <a class="text-secondary mb-2" href="clientes.html"><i class="fa fa-angle-right mr-2"></i>Nuestros Clientes</a>
                            <a class="text-secondary mb-2" href="ventas.html"><i class="fa fa-angle-right mr-2"></i>Ventas</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Noticias</h5>
                        <p>Suscribete a nuestro boletín mensual</p>
                        <form action="#">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Your Email Address">
                                <div class="input-group-append">
                                    <button class="btn btn-primary">Suscribirse</button>
                                </div>
                            </div>
                        </form>
                        <h6 class="text-secondary text-uppercase mt-4 mb-3">redes Sociales</h6>
                        <div class="d-flex">
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a class="btn btn-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row border-top mx-xl-5 py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-secondary">
                    <a class="text-primary" href="#">AyerdiRecords</a>. Todos los derechos reservados
                    <a class="text-primary" href="https://htmlcodex.com">Ayerdi Records </a>
                </p>
            </div>
            <div class="col-md-6 px-xl-0 text-center text-md-right">
                <img class="img-fluid" src="img/payments.png" alt="">
            </div>
        </div>
    </div>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>