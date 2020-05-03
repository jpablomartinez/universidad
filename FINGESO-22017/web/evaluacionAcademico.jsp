<%-- 
    Document   : evaluacionAcademico
    Created on : 05-12-2017, 1:18:28
    Author     : JuanPablo
--%>

<%@page import="modelos.Compromiso"%>
<%@page import="java.util.ArrayList"%>
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
		
    <div class = "row">
        <div class = "col-md-8 col-md-offset-1">
            <div class = "container">
                <div class = "panel panel-default" style = "margin-top: 10px;">
                    <div class = "panel-heading">Evaluaciones</div>
                        <div class = "panel-body">
                            <table class = "table table-hover">
                                <thead>
                                    <tr>
                                        <th>Año</th>
                                        <th>Semestre</th>
                                        <th>Calificación</th>
                                        <th>tipo</th>
                                        <th>Estado</th>
                                        <th>Comentarios</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ArrayList<String> comentarios; 
                                        String nombreArchivo1 = "Victor Parada_comentarios_2018_docente";
                                        String nombreArchivo2 = "Victor Parada_comentarios_2018_admin";
                                        Controlador_usuario userController = new Controlador_usuario();
                                        comentarios = userController.obtenerCompromisoComentado(nombreArchivo1);
                                        for(String c : comentarios){    
                                    %>
                                        <tr>
                                            <td>2018</td>
                                            <td>I</td>
                                            <td>7.0</td>
                                            <td>Docente</td>
                                            <% if (c.equals("aceptado")){ %>
                                            <td><p class = "text-success">Aceptado</p></td>
                                            <td>Sin informacion</td>
                                            <%}
                                            else{ %>
                                            <td><p class = "text-warning">Rechazado</p></td>
                                            <td><button type = "button" class = "btn btn info" data-toggle = "collapse" data-target="#docencia">Informacion</button></td>
                                            <div id ="docencia" class ="collapse">
                                                <%= c %>
                                            </div>
                                            <%}%>
                                        </tr>
                                    <%}%>
                                    <%
                                        comentarios = userController.obtenerCompromisoComentado(nombreArchivo2);
                                        for(String c : comentarios){
                                    %>
                                        <tr>
                                            <td>2018</td>
                                            <td>I</td>
                                            <td>7.0</td>
                                            <td>Administrativo</td>
                                            <% if (c.equals("aceptado")){ %>
                                            <td><p class = "text-success">Aceptado</p></td>
                                            <td>Sin informacion</td>
                                            <%}
                                            else{ %>
                                            <td><p class = "text-warning">Rechazado</p></td>
                                            <td><button type = "button" class = "btn btn info" data-toggle = "collapse" data-target="#admin">Informacion</button></td>
                                            <div id ="admin" class ="collapse">
                                                <%= c %>
                                            </div>
                                            <%}%>
                                        </tr>
                                    <%}%>
                                </tbody> 
                            </table>    
                        </div>
                </div>
            </div>
        </div>               
    </div>

</body>
</html>