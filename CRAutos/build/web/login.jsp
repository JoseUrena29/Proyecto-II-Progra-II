<%-- 
    Document   : login
    Created on : 7 dic 2021, 0:55:58
    Author     : LEANDRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Login</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/> 
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-fluid">
                <a href="Principal.html"><span class="logo"><img class="img-responsive" src="imagen/crautoslogo.png" hspace="5" vspace="8" width="300"></span></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    </ul>
                </div>
            </div>
        </nav> 


        <div id="contenedor1">
            <h1>Login CRAutos</h1>
            <form id="form1" action="Controlador">
                <img src="imagen/1.jpg" alt=""/>
                <input type="text" name="txtName" placeholder="Nombre"/>
                <hr>
                <img src="imagen/1.jpg" alt=""/>
                <input type="text" name="txtEmail" placeholder="Email"/>
                <hr>
                <input id="Guardar" type="submit" name="accion" value="Ingresar"/>
            </form>
        </div>
        <div id="contenedor2">
            <form id="form2" action="Usuario.html">
                <input type="submit" value="Registrarse" />
            </form>
            <div id="referencias">
                <a href="index.html">Regresar a la Pagina Principal</a>
            </div>
        </div>
    </body>
</html>
