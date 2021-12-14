<%-- 
    Document   : Principal.jsp
    Created on : 9 dic 2021, 4:39:35
    Author     : LEANDRO
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>CRAutos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
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
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="registroAutos.jsp"></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="registrarAutosServlet"></a>
                        </li>
                    </ul>
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Cuenta
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Nombre: ${nom}</a>
                            <a class="dropdown-item" href="#">Correo: ${correo}</a>
                            <a href="Controlador?accion=Salir" class="dropdown-item" >SALIR</a>
                        </div>
                    </div>
                    &emsp;&emsp;&emsp;&emsp;&emsp;<a class="btn btn-xs btn-success" href="login.jsp" >Login</a>

                </div>
            </div>
        </nav>

        <%
            Connection con;

            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/website", "root", "12345678");

            PreparedStatement ps;
            ResultSet rs;
            ps = con.prepareStatement("select * from autos");
            rs = ps.executeQuery();


        %>
        <br>
        <br>
        <div class="container nuevo">
            <a href="registroAutos.jsp" class="btn btn-success">+ Nuevo</a>
        </div>

        <div class="container buscar">

            <form class="form">
                <input class="form-control" type="text" name="txtbuscar">
                <input class="btn btn-info" type="submit" value=" Buscar">
            </form>
            <%                     
                String nombuscar = request.getParameter("txtbuscar");
                if (nombuscar != null) {
                    ps.getConnection().createStatement();

                    rs = ps.executeQuery("select * from autos where marca like'%" + nombuscar + "%' or modelo like'%" + nombuscar + "%' or anio like'%" + nombuscar + "%'");

                } else {
                    System.err.println("Error");
                }

            %>
        </div>
        <div class="container">
            <br>
            <h3 class="text-center">Lista de Autos</h3>
            <hr>
            <table class="table table-bordered">
                <tr>
                    <th class="text-center">ID</th>
                    <th class="text-center">MARCA</th>
                    <th class="text-center">MODELO</th>
                    <th class="text-center">AÑO</th>
                    <th class="text-center">ESTILO</th>
                    <th class="text-center">ACCIONES</th>
                </tr>
                <%                    while (rs.next()) {
                %>
                <tr>
                    <td class="text-center"><%=rs.getInt("id")%></td>
                    <td class="text-center"><%=rs.getString("marca")%></td>
                    <td class="text-center"><%=rs.getString("modelo")%></td>
                    <td class="text-center"><%=rs.getInt("anio")%></td>
                    <td class="text-center"><%=rs.getString("estilo")%></td>
                    <td class="text-center">
                        <a href="editAuto.jsp?id=<%=rs.getInt("id")%>" class="btn btn-info">Editar</a>
                        <a href="deleteAuto.jsp?id=<%=rs.getInt("id")%>" class="btn btn-danger" onclick="myFunction1()">Eliminar</a> 

                        <script type="text/javascript">
                            function myFunction1() {
                                alert(" ***AUTO ELIMINADO!!*** El vehiculo se elimino de la base de datos de forma satisfactoria!!");
                            }
                        </script> 
                        <a href="deleteAuto.jsp?id=<%=rs.getInt("id")%>" class="btn btn-success" onclick="myFunction()">Comprar</a>
                        <script type="text/javascript">
                            function myFunction() {
                                alert(" ***AUTO VENDIDO!!*** Su Compra se realizo de forma satisfactoria!! Muchas gracias por su compra!!");
                            }
                        </script> 
                    </td>
                </tr>
                <%}
                    rs.close();
                    ps.close();
                    con.close();
                %>
            </table>


            <br><br>  
        </div>
        <div class="footer">
            <a href="https://marchamo.ins-cr.com/Marchamo/frmConsultaMarchamo.aspx" target="_blank">
                <h3 class="greenfont"><b>CONSULTA TU MARCHAMO AQUI</b></h3></a>  
        </div><br>



        <div class="content-all">
            <div class="content-carrousel">
                <figure><img src="imagen/img1.jpg"></figure>
                <figure><img src="imagen/img2.jpg"></figure>
                <figure><img src="imagen/img3.jpg"></figure>
                <figure><img src="imagen/img4.jpg"></figure>
                <figure><img src="imagen/img5.jpg"></figure>
                <figure><img src="imagen/img6.jpg"></figure>
                <figure><img src="imagen/img7.jpg"></figure>
                <figure><img src="imagen/img8.jpg"></figure>
                <figure><img src="imagen/img9.jpg"></figure>
                <figure><img src="imagen/img10.jpg"></figure>
            </div>
        </div>



        <!--Footer Start-->
        <br><br><br><br><br><br><br><br><br><br><br>
        <section class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" align="center">
                        <div class="logo-footer"><a href="https://crautos.com">
                                <img class="img-responsive" src="imagen/crautoslogob.png" hspace="10">
                                <span>La P&aacute;gina de Autos de Costa Rica</span>
                            </a>
                        </div>
                        <p>Copyright &copy; 1998-2021.  Todos los derechos reservados.</p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" align="center">
                        <h4>Cont&aacute;ctanos</h4>
                        <div class="footer-contact">
                            <ul>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                                <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                                <strong>  Tel&eacute;fono:</strong><span> (506) 2291-4141</span></svg><p></p>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                                <strong> Email:</strong><span><a href="mailto:soporte@crautos.com">soporte@crautos.com</a></span></svg>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" align="center">
                        <ul class="social">
                            <a href="https://facebook.com/crautos"><img src="imagen/facebook.png"alt=""></a>
                            <a href="https://facebook.com/crautos" target="_blank" class="h3">S&iacute;guenos&nbsp;en&nbsp;Facebook</a>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <br><br>        
    </body>
</html>