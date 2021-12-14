<%-- 
    Document   : errorPage
    Created on : 12 dic 2021, 20:07:06
    Author     : LEANDRO
--%>

<%@ page isErrorPage = "true" %>

<html>
    <head>
        <title>Show Error Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>  
    </head>

    <body>
    <center>
        <div id="contenedor1">
            <form id="form2">
                <h1>Error</h1>
                <h2>El email ya esta registrado en la base de Datos</h2>

                <br>
                <h2>!Intentelo de Nuevo!</h2>
                <br>
                <br>
                <a href="Usuario.jsp" class="btn btn-success">Regresar al Menu de Registro Usuario</a>
            </form>
        </div>
    </center>
</body>
</html>
