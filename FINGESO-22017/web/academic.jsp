<%-- 
    Document   : academic
    Created on : 28-11-2017, 22:29:54
    Author     : JuanPablo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelos.Academico"%>
<%@page import="controladores.Controlador_usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html lang = "en">
<head>
	<title> Academico </title>
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
                <li class ="dropdown">
                    <a class ="dropdown-toogle" data-toggle="dropdown" href ="#">Acciones
                        <span class ="caret"></span>
                    </a>
                    <ul class ="dropdown-menu">
                        <li><a href ="#">Ver Compromisos</a></li>
                        <li><a href ="generar_compromiso.jsp">Crear Compromiso Academico</a></li>
                        <li><a href ="generar_compromiso_admin.jsp">Crear Compromisos Administrativo</a></li>
                        <li><a href ="#">Agregar Actividad</a></li>
                    </ul>
                </li>
                <li ><a href="evaluacionAcademico.jsp">Evaluaciones</a></li>
      		<li ><a href="#">Publicaciones</a></li>
            </ul>

	    <ul class = "nav navbar-nav navbar-right">
                <li><a href = "#">Cerrar Sesión</a></li>
            </ul>
  	</div>
    </nav>
	
	<div class = "container text-center">
            <div class = "row">
                <div class = "col-sm-3 well">
                    <div class = "well">
			<p><a href = "#">Mi perfil</a></p>
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
                        <p>	Cursos del semestre actual</p>
                            <hr>
                                <p>1. Diseño y programación web</p>
                                <p>2. Diseño y programación móvil</p>
				<p>3. Fundamentos de Ingeniería de Software</p>
                    </div>
                    <div class = "well">
			<p>Medios Audiovisuales</p>
                            <hr>
                            <div class = "row">
				<div class = "col-md-4">
                                    <div class = "thumbnail">
					<a href = "#">
                                            <img src = "images/act1.jpg" height="256" width="256">
						<div class = "caption">
                                                    <p>Actividades Diseño y programación web</p>
						</div>
					</a>
                                    </div>
				</div>

                                <div class = "col-md-4">
                                    <div class = "thumbnail">
					<a href = "#">
                                            <img src = "images/act2.jpg" height="256" width="256">
						<div class = "caption">
                                                    <p>Actividades Diseño y programación móvil</p>
						</div>
                                        </a>
                                    </div>
				</div>

				<div class = "col-md-4">
                                    <div class = "thumbnail">
					<a href = "#">
                                            <img src = "images/act3.jpg" height="256" width="256">
						<div class = "caption">
                                                    <p>Actividades Fundamentos de ISO</p>
						</div>
					</a>
                                    </div>
				</div>

                            </div>
                    </div>

			<div class = well>
                            <p>Vinculación con el medio</p>
				<hr>
                                    <p>1. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum minima laborum magni in quia tenetur soluta necessitatibus aliquid aspernatur rem laudantium, aut iure quod ipsam, culpa explicabo et officiis! Nemo!</p>
                                    <p><a href = "#">Link</a></p>
                                    <p>2 . Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id eos voluptas dolores sed eligendi placeat veniam repellendus facilis nihil ipsum eaque qui totam assumenda non facere, labore delectus dolore ex.</p>
                                    <p><a href = "#">Link</a></p>
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