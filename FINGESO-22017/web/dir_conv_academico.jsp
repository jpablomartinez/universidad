<%-- 
    Document   : dir_conv_academico
    Created on : 30-11-2017, 19:00:17
    Author     : JuanPablo
--%>

<%@page import="controladores.Controlador_Compromiso"%>
<%@page import="modelos.Compromiso"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controladores.Controlador_usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html lang = "en">
<head>
    <title> Director </title>
    <meta charset="utf-8">
    <meta charset=utf-8>
    <meta name=viewport content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel = "stylesheet" href = "css/academics.css">
    <link rel = "stylesheet" href = "css/styles.css">
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
      		<li><a href="director.jsp">Home</a></li>
      		<li class="active"><a href="dir_academicos.jsp">Académicos</a></li>
            </ul>

            <ul class = "nav navnar-nav navbar-right">
                <li><a href = "#">Cerrar Sesión</a></li>
            </ul>
  	</div>
    </nav>
   
    <div class = "row">
        <div class = "col-md-8 col-md-offset-1">
            <div class = "container">
		<div class = "panel panel-default" style = "margin-top: 10px;">
                    <div class = "panel-heading">Actividad Docente</div>
			<div class = "panel-body">
                            <table class = "table table-hover">
				<thead>
                                    <tr>
					<th>Curso</th>
					<th>Horas semanales</th>
					<th>Horas semestrales</th>
                                    </tr>
				</thead>
                                <tbody>
                                    <%
                                       ArrayList<Compromiso> compromisoAcademico = new ArrayList();
                                       Controlador_usuario userController = new Controlador_usuario();
                                       compromisoAcademico = userController.obtenerCompromisos("Victor Parada_Compromiso_2018_Docente");
                                       for(Compromiso ca : compromisoAcademico){
                                    %>
                                        <tr>
                                            <td><%= ca.getNombreActividad()  %></td>
                                            <td><%= ca.getHorasSemanales() %></td>
                                            <td><%= ca.getHorasSemestrales() %></td>
                                        </tr>
                                        <% 
                                        }
                                        %>
                                </tbody> 
                            </table> 
                                <form method ="post" action ="evaluarAcademicoServlet">
                                    <div class ="row">
                                        <div class ="col-sm-4"></div>
                                        <div class ="col-sm-2">
                                            <input type = "submit" name = "btn_accept_d" class = "btn btn-sucess btn-block" value = "Aceptar">
                                        </div>
                                        <div class ="col-sm-2">
                                            <input type = "submit" name = "btn_reject_d" class = "btn btn-danger btn-block" value = "Rechazar">
                                        </div>
                                        <div class ="col-sm-4"></div>
                                    </div>
                                    <div class ="form-group">
                                        <label for ="comment">Comentarios: </label>
                                        <textarea class ="form-control" rows ="3" name ="comment_docente"></textarea>
                                    </div>
                                </form>
                                
                        </div>
                </div>
            </div>
        </div>               
    </div>
       
    <div class = "row">
        <div class = "col-md-8 col-md-offset-1">
            <div class = "container">
		<div class = "panel panel-default" style = "margin-top: 10px;">
                    <div class = "panel-heading">Actividad Adminitrativa</div>
			<div class = "panel-body">
                            <table class = "table table-hover">
				<thead>
                                    <tr>
					<th>Actividad</th>
					<th>Horas semanales</th>
					<th>Horas semestrales</th>
                                    </tr>
				</thead>
				<tbody>
                                    <%
                                       ArrayList<Compromiso> compromisoAdmin = new ArrayList();
                                       compromisoAdmin = userController.obtenerCompromisos("Victor Parada_Compromiso_2018_Administrativo");
                                       for(Compromiso ca : compromisoAdmin){
                                    %>
                                        <tr>
                                            <td><%= ca.getNombreActividad()  %></td>
                                            <td><%= ca.getHorasSemanales() %></td>
                                            <td><%= ca.getHorasSemestrales() %></td>
                                        </tr>
                                        <% 
                                        }
                                        %>
                                </tbody> 
                            </table>
                                <form method ="post" action ="evaluarAcademicoServlet">
                                    <div class ="row">
                                        <div class ="col-sm-4"></div>
                                        <div class ="col-sm-2">
                                            <input type = "submit" name = "btn_accept_a" class = "btn btn-sucess btn-block" value = "Aceptar">
                                        </div>
                                        <div class ="col-sm-2">
                                            <input type = "submit" name = "btn_reject_a" class = "btn btn-danger btn-block" value = "Rechazar">
                                        </div>
                                        <div class ="col-sm-4"></div>
                                    </div>
                                    <div class ="form-group">
                                        <label for ="comment">Comentarios: </label>
                                        <textarea class ="form-control" rows ="3" name ="comment_admin"></textarea>
                                    </div>
                                </form>
                        </div>
		</div>
            </div>
        </div>
    </div>

	

</body>
</html>
