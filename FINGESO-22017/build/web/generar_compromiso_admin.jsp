<%-- 
    Document   : generar_compromiso_admin
    Created on : 30-11-2017, 18:09:27
    Author     : JuanPablo
--%>

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
                    <li><a href="#">Home</a></li>
                    <li class = "active"><a href="#">Compromisos</a></li>
                    <li><a href="#">Publicaciones</a></li>
                </ul>
                <ul class = "nav navnar-nav navbar-right">
                    <li><a href = "#">Cerrar Sesión</a></li>
                </ul>
            </div>
	</nav>
	
	<div class = "container">
            <div class = "row">
                <div class = "col-sm-3 well   text-center">
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
		<div class = "col-sm-9">
                    <div class = "well">
			<h4>Declaración de compromisos Administrativos</h4>
                        <form method="post" action = "AdminServlet" class="form-hotizontal">
                            <div class ="row">
                                <div class ="col-sm-8">
                                    <div class = "col-sm-2">
                                        <p>Año</p>
                                    </div>
                                <div class = "col-sm-4">
                                    <input type = "text" name = "anno" class = "form-control" id = "text" placeholder = "Año">
                                </div>
                                </div>
                            </div>
                            <br>
                            <div class = "row">
                                <div class = "col-sm-12">
                                    <div class = "col-sm-3">
                                        <p>Actividad</p>
                                    </div>
                                    <div class = "col-sm-3">
                                        <p>Hrs Semana</p>
                                    </div>
                                    <div class = "col-sm-3">
                                        <p>Hrs Semestre</p>
                                    </div>
                                    <div class = "col-sm-3">
                                        <button type = "button" class = "btn btn-primary btn-sm addButton">Añadir</button>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group AdminForm">
                                <div class ="col-sm-12">
                                    <div class ="col-sm-3">
                                        <input type ="text" class ="form-control" name="actv[]" placeholder="Actividad" style = "margin-bottom: 5px;"/>
                                    </div>
                                    <div class ="col-sm-3">
                                        <input type="text" class ="form-control" name="hsemanal[]" placeholder="Horas semanales" style = "margin-bottom: 5px;"/>
                                    </div>
                                    <div class ="col-sm-3">
                                        <input type ="text" class ="form-control" name="hsemestral[]" placeholder="Horas semestrales" style = "margin-bottom: 5px;"/>
                                    </div>
                                    <div class = "col-sm-3">
                                        <button type = "button" class = "btn btn-danger btn-sm remove">Quitar</button>
                                    </div>
                                </div>
                                <br>
                            </div>
                            <div class = "row">
                                <div class = "col-sm-6" style = "margin-left: 15px;">
                                    <input type = "submit" name = "btnGuardar" class = "btn btn-primary" value = "Guardar">
                                </div>
                            </div>
                        </form>
                        <div class ="form-group AdminFormCopy" style="display:none;">
                            <div class ="col-sm-12">
                                <div class ="col-sm-3">
                                    <input type ="text" class ="form-control" name="actv[]" placeholder="Curso" style = "margin-bottom: 5px;"/>
                                </div>
                                <div class ="col-sm-3">
                                    <input type="text" class ="form-control" name="hsemanal[]" placeholder="Horas semanales" style = "margin-bottom: 5px;"/>
                                </div>
                                <div class ="col-sm-3">
                                    <input type ="text" class ="form-control" name="hsemestral[]" placeholder="Horas semestrales" style = "margin-bottom: 5px;" />
                                </div>
                                <div class = "col-sm-3">
                                    <a href ="javascript:void(0)" class ="btn btn-danger btn-sm remove">Quitar</a>
                                </div>
                            </div>
                            <br>
                        </div>
			            
                    </div>
                </div>
            </div>
        </div>
                    
	<footer class = "container-fluid">
		<p>Desarrollado por JHS, 2017.</p>
	</footer>
</body>

<script>
    $(document).ready(function(){
       var max = 5;
       
       $(".addButton").click(function(){
           if($('body').find('.AdminForm').length < max){
               var fieldHTML = '<div class="form-group AdminForm">'+$(".AdminFormCopy").html()+'</div>';
               $('body').find('.AdminForm:last').after(fieldHTML);
           }
           else{
                alert('Tamaño maximo de cursos alcanzado!');
            }
       });
       $('body').on('click','.remove',function(){
           $(this).parents('.AdminForm').remove();
       });
       
    });
</script>

</html> 