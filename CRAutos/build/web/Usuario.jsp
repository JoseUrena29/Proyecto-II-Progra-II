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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>  
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-fluid">
                <a href="Principal.jsp"><span class="logo"><img class="img-responsive" src="imagen/crautoslogo.png" hspace="5" vspace="8" width="300"></span></a>
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
                <br>
                <br>
                <input id="Guardar" type="submit" value="Registrarse"/>
            </form>
        </div>
        <div id="contenedor2">
            <form id="form2">

            </form>
            <div id="referencias">
                <br>
                <br>
                <br>
                <a href="Principal.jsp">Regresar a la Pagina Principal</a>
            </div>
        </div>
    </body>
</html>
