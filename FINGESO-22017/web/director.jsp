<%-- 
    Document   : director
    Created on : 29-11-2017, 2:48:09
    Author     : JuanPablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html lang = "en">
<head>
	<title> Director </title>
	<meta charset="utf-8">
	<meta charset=utf-8>
	<meta name=viewport content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel = "stylesheet" href = "css/styles.css">
	<link rel = "stylesheet" href = "css/academics.css">
  	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
      		<a class="navbar-brand" href="#">USACH</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
      		<li ><a href="dir_academicos.jsp">Académicos</a></li>
      		<li><a href="#">Mis Actividades</a></li>
      		<li ><a href="#">Publicaciones</a></li>
            </ul>
			
	    <ul class = "nav navnar-nav navbar-right">
                <li><a href = "#">Cerrar Sesión</a></li>
            </ul> 
        </div>
	</nav>
	
	<div class = "container text-center">
            <div class = "row">
                <div class = "col-sm-3 well">
                    <div class = "well">
			<p><a href = "#">Mi Perfil</a></p>
                            <img src = "images/man.png" class = "img-circle" width="90" height="90" alt = "Avatar">
                            <hr>
                                <p>${sessionScope.user}</p>
                    </div>
                    <div class = "well">
                        <p>Mis intereses</p>
			<p>
                            <span class = "label label-primary">Diseño web</span>
                            <span class = "label label-primary">Programación web</span>
                            <span class = "label label-primary">Html</span>
                            <span class = "label label-primary">CSS</span>
                            <span class = "label label-primary">Javascript</span>
                            <span class = "label label-primary">Bootstrap</span>
                            <span class = "label label-primary">Angularjs</span>
			</p>
                    </div>
                </div>
		<div class = "col-sm-7">
                    <div class = "well">
                        <p>	
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse odit sequi illo quas rem ullam excepturi similique enim, dolores, blanditiis amet sed voluptates officia saepe autem ipsam, obcaecati eaque a.
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error velit fugit aspernatur quas est excepturi id minima totam doloremque aliquid repellat odit eius temporibus, voluptate. Est earum architecto ipsam fuga.
                        </p>
                    </div>
                    <div class = "well">
                        <p>Actividades recientes</p>
                        <hr>
                        <p>1. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero expedita dicta maiores doloremque velit error cumque officiis sed quaerat nemo, dolor ipsum tempore quas beatae, sint vitae temporibus labore ab.</p>
			<p>2. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, ipsum, omnis corporis tempore quas et officiis eaque molestiae dicta mollitia odio recusandae minus! Autem maxime, deleniti ipsa? Quisquam, odit, eveniet!</p>
                        <p>3. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis at commodi </p>
                    </div>

                </div>

		<div class = "col-sm-2">
                    <div class = "well">
			<p>Enlaces de interés</p>
                        <hr>
			<p><a href = "www.usach.cl">Usach</a></p>
			<p><a href = "cl.linkedin.com">Linkedin</a></p>
			<p><a href = "www.researchgate.net">Researchgate</a></p>
                    </div>
		</div>

            </div>
	</div>

	<footer class = "container-fluid">
		<p>Desarrollado por JHS, 2017.</p>
	</footer>
</body>
</html>