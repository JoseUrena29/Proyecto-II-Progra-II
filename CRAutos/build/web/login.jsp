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
        <div id="contenedor1">
            <h1>Login CRAutos</h1>
            <form id="form1">
                <img src="imagen/1.jpg" alt=""/>
                <input type="text" name="" placeholder="Nombre"/>
                <hr>
                <img src="imagen/1.jpg" alt=""/>
                <input type="text" name="" placeholder="Email"/>
                <hr>
                <img src="imagen/1.jpg" alt=""/>
                <input type="text" name="" placeholder="Telefono"/>
                <hr>
                <input type="submit" value="Ingresar"/>
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
