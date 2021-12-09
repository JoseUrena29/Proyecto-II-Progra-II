<%-- 
    Document   : Usuario
    Created on : 9 dic 2021, 5:15:44
    Author     : LEANDRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Registro</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/> 
    </head>
    <body>
        <div id="contenedor1">
            <h1>Registro CRAutos</h1>
            <form id="form1" action="crearUsuario.jsp">
                <img src="imagen/1.jpg" alt=""/>
                <input type="text" name="txtName" placeholder="Nombre"/>
                <hr>
                <img src="imagen/1.jpg" alt=""/>
                <input type="text" name="txtEmail"  placeholder="Email"/>
                <hr>
                <img src="imagen/1.jpg" alt=""/>
                <input type="text" name="txtTelefono" placeholder="Telefono"/>
                <hr>
                <input id="Guardar" type="submit" value="Registrarse"/>
            </form>
        </div>
        <div id="contenedor2">
            <form id="form2">

            </form>
            <div id="referencias">
                <a href="Principal.jsp">Regresar a la Pagina Principal</a>
            </div>
        </div>
    </body>
</html>
