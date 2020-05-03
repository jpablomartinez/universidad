<%-- 
    Document   : login
    Created on : 28-11-2017, 21:48:40
    Author     : JuanPablo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelos.Academico"%>
<%@page import="controladores.Controlador_usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html lang = "en">
<head>
	<title> Inicio </title>
	<meta charset="utf-8">
	<meta charset=utf-8>
	<meta name=viewport content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel = "stylesheet" href = "css/custom.css">
	<link rel = "stylesheet" href = "css/styles.css">
  	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<%
   
%>

<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">USACH</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Equipo</a></li>
            </ul>
  	</div>
    </nav>
	
    <div class = "row">
        <div class = "col-md-4"></div>
            <div class = "col-md-4">
                <div class = "panel panel-default" style = "margin-top: 110px">
                    <div class = "panel-heading">Acceso Plataforma Académica USACH</div>
                        <div class = "panel-body" style="margin-top: 10px;">
                            <form method="post" action="IniciarSesionServlet">
                                <div class = "form-group">
                                    <input type = "email" name = "correo" class = "form-control" placeholder="Correo electrónico"/>
                                </div>
                                <div class = form-group>
                                    <input type = "submit" name = "btn_login" class = "btn btn-sucess btn-lg btn-block" value = "Ingresar">
                                </div>
                            </form>
                            
                                
                        <hr>
                            <img class = "img-responsive" src ="images/usach.png" width="180"> 
                        </div>
                </div>
            </div>
                <div class = "col-md-4"></div>
        </div>
</body>
</html>