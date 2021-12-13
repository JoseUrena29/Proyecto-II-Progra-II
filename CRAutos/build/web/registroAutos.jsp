<%-- 
    Document   : registroAutos
    Created on : 9 dic 2021, 5:19:37
    Author     : LEANDRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
                integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
                integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
        crossorigin="anonymous"></script>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <title>Registro de Autos</title>
    </head>
    <body>
        <header>
            <div class="container2">
                <div class="row align-items-stretch justify-content-between">
                    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                        <div class="container-fluid">
                            <a href="Principal.jsp"><span class="logo"><img class="img-responsive" src="imagen/crautoslogo.png" hspace="5" vspace="8" width="300"></span></a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                </ul>
                                <a class="btn btn-xs btn-success" href="login.jsp" >Login</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header> 
        <br><br><br>
        <div class="container">
            <div class="card" style="margin-top: 50px;">
                <div class="card-header">
                    Registro de Vehiculos
                </div>
                <div class="card-body">
                    <form action="crearAuto.jsp">
                        <div class="mb-3">
                            <label class="form-label">Marca</label>
                            <select name="txtMarca" class="form-control">
                                <option>Toyota</option>
                                <option>Suzuki</option>
                                <option>Honda</option>
                                <option>Hyundai</option>
                                <option>Mitsubishi</option>
                                <option>Nissan</option>
                                <option>Audi</option>
                                <option>BMW</option>
                                <option>Chevrolet</option>
                                <option>Daihatsu</option>
                                <option>Ford</option>
                                <option>Isuzu</option>
                                <option>Jeep</option>
                                <option>Kia</option>
                                <option>Lexus</option>
                                <option>Mercedes Benz</option>
                                <option>Subaru</option> 
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Modelo</label>
                            <input type="text" class="form-control" name="txtModelo" >
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Año</label>
                            <input type="text" class="form-control" name="txtAnio">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Estilo</label>
                            <select name="txtEstilo" class="form-control">
                                <option>Coupé</option>
                                <option>Todoterreno/SUV</option>
                                <option>Hatchback</option>
                                <option>Sedán</option>
                                <option>Pick UP</option>
                                <option>Comercial</option>
                                <option>Descapotable</option>
                                <option>Deportivo</option>
                                <option>Familiar</option>
                                <option>Urbano</option>
                            </select>
                        </div>
                        <button id="btnSave" class="btn btn-primary" type="submit">Registrar Vehiculo</button>    
                    </form>                                      
                </div>
            </div>
        </div>
    </body>
</html>