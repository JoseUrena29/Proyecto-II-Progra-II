<%-- 
    Document   : Principal.jsp
    Created on : 9 dic 2021, 4:39:35
    Author     : LEANDRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <title>CRAutos</title>
    </head>
    <body>
        <header>
            <div class="container2">
                <div class="row align-items-stretch justify-content-between">
                    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                        <div class="container-fluid">
                            <a href="Principal.html"><span class="logo"><img class="img-responsive" src="imagen/crautoslogo.png" hspace="5" vspace="8" width="300"></span></a>
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
                    <form action="createproduct.jsp">
                        <div class="mb-3">
                            <label class="form-label">Marca</label>
                            <select name="txtId" class="form-control">
                                <option>Audi</option>
                                <option>BMW</option>
                                <option>Chevrolet</option>
                                <option>Daewoo</option>
                                <option>Daihatsu</option>
                                <option>Ferrari</option>
                                <option>Fiat</option>
                                <option>Ford</option>
                                <option>Honda</option>
                                <option>Hyundai</option>
                                <option>Isuzu</option>
                                <option>Jaguar</option>
                                <option>Jeep</option>
                                <option>Kia</option>
                                <option>Lamborghini</option>
                                <option>Lexus</option>
                                <option>Maserati</option>
                                <option>Mercedes Benz</option>
                                <option>Mitsubishi</option>
                                <option>Nissan</option>
                                <option>Porsche</option>
                                <option>Subaru</option>
                                <option>Suzuki</option>
                                <option>Toyota</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Modelo</label>
                            <input type="text" class="form-control" name="txtName" >
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Año</label>
                            <input type="text" class="form-control" name="txtPrice">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Estilo</label>
                            <select name="txtUser" class="form-control">
                                <option>Autocaravana</option>
                                <option>Berlina</option>
                                <option>Coupé</option>
                                <option>Comercial</option>
                                <option>Descapotable</option>
                                <option>Deportivo/HyperCar</option>
                                <option>Familiar</option>
                                <option>Hatchback/Compacto</option>
                                <option>Monovolumen</option>
                                <option>Mega GT</option>
                                <option>Pick UP</option>
                                <option>Pony Car/Muscle Car</option>
                                <option>Subcompacto</option>
                                <option>Sedán</option>
                                <option>Todoterreno/SUV</option>
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