<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@ page import = "java.util.*" %>
    <%@ page import = "clasesProyecto.*" %>


<!DOCTYPE html>
<html>

<% DBController controlador = new DBController(); %>
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
                            <a href="tienda.jsp" class="nav-item nav-link">Productos</a>
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


    <!-- Carousel Start -->
    <div class="container-fluid mb-3">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#header-carousel" data-slide-to="1"></li>
                        <li data-target="#header-carousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item position-relative active" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="img/rock-bands-crazy.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Clásicos del Rock</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Desde Chuck Berry hasta lo más actual del panorama del rock internacional</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item position-relative" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="img/led-zeppelin-IV.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Discos del mes</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Lo mas vendido de este mes</p>
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="tienda.html">Ver</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item position-relative" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="img/queen.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Grandes Exitos</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Los más vendidos de todos los tiempos</p>
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="tienda.html">Ver</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="product-offer mb-30" style="height: 200px;">
                    <img class="img-fluid" src="img/20-off.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Descuento 20%</h6>
                        <h3 class="text-white mb-3">Oferta por tiempo limitado</h3>
                        
                        <!-- CODIGO JAVA -->
                        <!-- Mandar a Productos y mostrar 6-9 productos con un 20% de descuento aplicado al PVP -->
                        <a href="tienda.html" class="btn btn-primary">Comprar</a>
                    </div>
                </div>
                <div class="product-offer mb-30" style="height: 200px;">
                    <img class="img-fluid" src="img/last-units.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Últimas unidades</h6>
                        <h3 class="text-white mb-3">Hazte con una copia ya</h3>

                        <!-- CODIGO JAVA -->
                        <!-- Mandar a Productos y mostrar 9-15 productos  -->
                        <a href="tienda.html" class="btn btn-primary">Ver</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Productos de Calidad</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Envio Gratis</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Política de devolución</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Soporte 24/7</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->


    <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Nuestras Recomendaciones</span></h2>
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <!-- CODIGO JAVA -->
                <!-- MANDAR A PAGINA PRODUCTOS (TODOS) -->
                <a class="text-decoration-none" href="tienda.html">
                    <div class="cat-item d-flex align-items-center mb-4">
                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                            <img class="img-fluid" src="img/cat-1.jpg" alt="">
                        </div>
                        <div class="flex-fill pl-3">
                            <h6>Vinilos</h6>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <!-- CODIGO JAVA -->
                <!-- MANDAR A PAGINA PRODUCTOS Y MOSTRAR VINILOS MAS VENDIDOS -->
                <a class="text-decoration-none" href="tienda.html">
                    <div class="cat-item img-zoom d-flex align-items-center mb-4">
                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                            <img class="img-fluid" src="img/cat-3.jpg" alt="">
                        </div>
                        <div class="flex-fill pl-3">
                            <h6>Más Vendidos</h6>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <!-- CODIGO JAVA -->
                <!-- MANDAR A PAGINA PRODUCTOS Y MOSTRAR VINILOS MAS VENDIDOS DEL MES -->
                <a class="text-decoration-none" href="tienda.html">
                    <div class="cat-item img-zoom d-flex align-items-center mb-4">
                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                            <img class="img-fluid" src="img/cat-4.jpg" alt="">
                        </div>
                        <div class="flex-fill pl-3">
                            <h6>Top del mes</h6>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <!-- Categories End -->


    <!-- Products Start -->

    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">PRODUCTOS RECOMENDADOS</span></h2>
        <div class="row px-xl-5">

            <!-- CODIGO JAVA -->
            <!-- 8  - 12 productos cuales quiera -->
            <% ArrayList<Disco> discos = controlador.todosDiscos();
            for(int i = 0; i<8; i++){%>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/<%=discos.get(i).getIdDisco()%>.jpg" alt="">
                        <div class="product-action">
                                    <!-- CODIGO JAVA -->
                                    <!-- modificar href's= para que coincida con la pagina y mande los datos-->
                                    <a class="btn btn-outline-dark btn-square" href="detalles.jsp?idDisco=<%=discos.get(i).getIdDisco()%>"><i class="far fa-eye"></i></a>
                         <!--        <a class="btn btn-outline-dark btn-square" href="modDisco.html"><i class="fas fa-edit"></i></a>
                                    <a class="btn btn-outline-dark btn-square" href="#"><i class="fas fa-trash"></i></a>  -->
                        </div>

                    </div>
                    <div class="text-center py-4">
                        <!-- CODIGO JAVA -->
                        <!-- modificar href= para que coincida con la pagina y mande los datos-->
                        <a class="h6 text-decoration-none text-truncate" href=""><%=discos.get(i).getNombre() %></a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                        <!-- CODIGO JAVA -->
                        <!-- CAMBIAR PRECIO SEGUN ARTICULO-->
                        
                            <% int desc = controlador.dameDescuentoDisco(discos.get(i).getIdDisco()); %>
                       		 <% if (desc > 0){ %>
                            <h5><%=discos.get(i).getPrecio() - (discos.get(i).getPrecio() * desc / 100)%>$</h5><h6 class="text-muted ml-2"><del><%=discos.get(i).getPrecio()%>$</del></h6>
                            <%}else{ %>
                            	<h5><%=discos.get(i).getPrecio() %>$</h5>
                            <%} %>
                        </div>
                    </div>
                </div>
            </div>
            <%} %>
        </div>
    </div>
    <!-- Products End -->


    <!-- Offer Start -->
    <div class="container-fluid pt-5 pb-3">
        <div class="row px-xl-5">
            <div class="col-md-6">
                <div class="product-offer mb-30" style="height: 300px;">
                    <img class="img-fluid" src="img/20-off.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Descuento 20%</h6>
                        <h3 class="text-white mb-3">Oferta por tiempo limitado</h3>
                        <!-- CODIGO JAVA -->
                        <!-- Mandar a Productos y mostrar 6-9 productos con un 20% de descuento aplicado al PVP -->
                        <a href="tienda.html" class="btn btn-primary">Comprar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="product-offer mb-30" style="height: 300px;">
                    <img class="img-fluid" src="img/last-units.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Últimas Unidades</h6>
                        <h3 class="text-white mb-3">Hazte con una copia ya</h3>
                        <a href="tienda.html" class="btn btn-primary">Ver</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Offer End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Últimas Unidades</span></h2>
        <div class="row px-xl-5">
            <!-- CODIGO JAVA -->
            <!-- 6 Discos más ULTIMAS UDS-->
            
            <%ArrayList<Disco> discosUltimas = controlador.dameDiscosOrdenStock(); %>
            
            
            <%for (int i = 0; i < 8 ; i++){ %>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="./img/<%=discosUltimas.get(i).getIdDisco()%>.jpg" alt="">
                        <div class="product-action">
                                    <!-- CODIGO JAVA -->
                                    <!-- modificar href= para que coincida con la pagina y mande los datos-->
                                    
                                    <a class="btn btn-outline-dark btn-square" href="detalles.jsp?idDisco =<%=discosUltimas.get(i).getIdDisco()%>"><i class="far fa-eye"></i></a>
                            <!--        <a class="btn btn-outline-dark btn-square" href="modDisco.html"><i class="fas fa-edit"></i></a>
                                    <a class="btn btn-outline-dark btn-square" href=""><i class="fas fa-trash"></i></a>    -->  
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href=""><%=discosUltimas.get(i).getNombre()%></a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                        <!-- CODIGO JAVA -->
                        <!-- CAMBIAR PRECIO SEGUN ARTICULO-->
                        <% int desc = controlador.dameDescuentoDisco(discosUltimas.get(i).getIdDisco()); %>
                        <% if (desc > 0){ %>
                            <h5><%=discosUltimas.get(i).getPrecio() - (discosUltimas.get(i).getPrecio() * desc / 100)%>$</h5><h6 class="text-muted ml-2"><del><%=discosUltimas.get(i).getPrecio()%>$</del></h6>
                            <%}else{ %>
                            	<h5><%=discosUltimas.get(i).getPrecio() %>$</h5>
                            <%} %>
                        </div>
                    </div>
                </div>
            </div>
            <%} %>
        </div>
    </div>
    <!-- Products End -->


    <!-- Vendor Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel vendor-carousel">
                    <div class="bg-light p-4">
                        <img src="img/napalm-sponsor.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/Rolling-Stone-sponsor.jpg " alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/fender-sponsor.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/harley-sponsor.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/gibson-sponsor.png" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vans-sponsor.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/marshall.png" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/ROCK-FM.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->
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
                            <a class="text-secondary mb-2" href="index2.html"><i class="fa fa-angle-right mr-2"></i>Home</a>
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