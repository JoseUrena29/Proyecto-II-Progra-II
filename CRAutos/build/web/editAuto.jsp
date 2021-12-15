<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Edit product</title>
    </head>
    <body>
        <%
            Connection con;

            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/website", "root", "12345678");

            PreparedStatement ps;
            ResultSet rs;
            int id = Integer.parseInt(request.getParameter("id"));
            ps = con.prepareStatement("select * from autos where id=" + id);
            rs = ps.executeQuery();
            while (rs.next()) {

        %>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-fluid">
                <a href="Principal.jsp"><span class="logo"><img class="img-responsive" src="imagen/crautoslogo.png" hspace="5" vspace="8" width="300"></span></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    </ul>
                    &emsp;&emsp;&emsp;&emsp;&emsp;<a class="btn btn-xs btn-success" href="login.jsp" >Login</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="card" style="margin-top: 50px;">
                <div class="card-header">
                    Editor de Autos
                </div>
                <div class="card-body">
                    <form action="" method="post">
                        <div class="mb-3">
                            <label class="form-label">ID</label>
                            <input type="text" class="form-control" readonly="" value="<%=rs.getInt("id")%>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Marca</label>
                            <select name="txtMarca" class="form-control" value="<%=rs.getString("marca")%>">
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
                            <input type="text" class="form-control" name="txtModelo" value="<%=rs.getString("modelo")%>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Año</label>
                            <input type="text" class="form-control" name="txtAnio" value="<%=rs.getInt("anio")%>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Estilo</label>
                            <select name="txtEstilo" class="form-control" value="<%=rs.getString("estilo")%>">
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
                        <button id="btnSave" class="btn btn-primary" type="submit">Editar Vehiculo</button>    

                        <a href="Principal.jsp">Regresar</a>
                    </form>  
                    <%                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
<%
    String marca, modelo, anio, estilo;
    marca = request.getParameter("txtMarca");
    modelo = request.getParameter("txtModelo");
    anio = request.getParameter("txtAnio");
    estilo = request.getParameter("txtEstilo");
    if (marca != null && modelo != null && anio != null && estilo != null) {
        ps = con.prepareStatement("update autos set marca='" + marca + "',modelo='" + modelo + "',anio='" + anio + "',estilo='" + estilo + "'where id=" + id);
        ps.executeUpdate();
        response.sendRedirect("Principal.jsp");
    }
%>