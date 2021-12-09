<%-- 
    Document   : Principal.jsp
    Created on : 9 dic 2021, 4:39:35
    Author     : LEANDRO
--%>

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
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="registroAutos.jsp">Registro de Autos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="productServlet">Autos Disponibles</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="autos.html">Autos</a>                        
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

        <style type="text/css">
            <!--
            .brandtitle {
                font-family: Oxygen;
                font-size: 16px;
                font-weight: 600;
                color: #000;
            }
            .brandtitle2 {
                font-family: Oxygen;
                font-size: 16px;
                font-weight: 400;
                color: #FFF;
            }
            .modeltitle {
                font-family: Oxygen;
                font-size: 14px;
                font-weight: 600;
                color: #000;
                padding-left: 5px;
                line-height: 15px;
            }
            .transtitle {
                font-family: Oxygen;
                font-size: 12px;
                font-weight: 400;
                color: #000000;
                line-height: 14px;
            }
            .seller {
                font-family: Oxygen;
                font-size: 12px;
                color:#C00;
                font-weight: 600;
            }
            .precio {
                font-family: Oxygen;
                font-size: 16px;
                font-weight: 600;
                color: #AA0000;
                line-height: 16px;
            }
            .preciodolares {
                font-size: 15px;
                font-weight: 600;
                color: #000000;
                line-height: 14px;
            }
            .marqueefont {
                font-size: 11px;
                font-weight: 400;
                color: #555555;
                line-height: 12px;
            }
            .mainhlcar {
                background-color: #FFF382;
            }
            .dealerhlcar {
                background-color: #EFEFEF;
            }
            .header-image {
                background-size: cover;
            }
            .searchform {
                border: 1px solid #e5e5e5;
                -moz-border-radius: 11px / 13px;
                -webkit-border-radius: 11px / 13px;
                border-radius: 11px / 13px;
                -moz-background-clip: padding;
                -webkit-background-clip: padding-box;
                background-clip: padding-box;
                background-color: #efefef;
                -moz-box-shadow: 0 0 5px rgba(0,0,0,.13);
                -webkit-box-shadow: 0 0 5px rgba(0,0,0,.13);
                box-shadow: 0 0 5px rgba(0,0,0,.13);
                margin-bottom: 20px;
                padding-left: 0px;
                padding-right: 0px;
                padding-top: 10px;
                padding-bottom: 10px;
                font-family: Oxygen;
                font-size: 16px;
            }
            .searchform:hover {
                background-image: -moz-linear-gradient(bottom, #dedede 0%, #f9f9f9 50%);
                background-image: -o-linear-gradient(bottom, #dedede 0%, #f9f9f9 50%);
                background-image: -webkit-linear-gradient(bottom, #dedede 0%, #f9f9f9 50%);
                background-image: linear-gradient(bottom, #dedede 0%, #f9f9f9 50%);
            }
            .mytext1 {
                font-family: Oxygen;
                font-style: normal;
                color: #000000;
                font-size: 14px;
                line-height: 16px;
                text-decoration: none;
            }
            A.mytext1:link {
                color: #0;
                text-decoration: none;
            }
            A.mytext1:hover {
                text-decoration: none;
            }
            A.mytext1:visited {
                color: #0;
                text-decoration: none;
            }
            A.mytext1:visited:hover {
                text-decoration: none;
            }
            .mytext1b {
                font-family: Oxygen;
                font-style: normal;
                color: #307E1D;
                font-size: 13px;
                text-decoration: none;
            }
            A.mytext1b:link {
                color: #0C;
                text-decoration: none;
            }
            A.mytext1b:hover {
                text-decoration: none;
            }
            A.mytext1b:visited {
                color: #0C;
                text-decoration: none;
            }
            A.mytext1b:visited:hover {
                text-decoration: none;
            }
            .transtitle {
                font-family: Oxygen;
                font-style: normal;
                color: #000000;
                font-size: 11px;
                text-decoration: none;
            }
            A.transtitle:link {
                color: #000000;
                text-decoration: none;
            }
            A.transtitle:hover {
                text-decoration: none;
            }
            A.transtitle:visited {
                color: #007700;
                text-decoration: none;
            }
            A.transtitle:visited:hover {
                text-decoration: none;
            }
            .carbox {
                margin-bottom: 10px;
                background-color: #FFFFFF;
                border-width:3px;
                border-color:#F1E914;
            }
            .carbox-dealer {
                margin-bottom: 10px;
                background-color: #FFFFFF;
                border-width:3px;
                border-color:#2D77C5;
            }
            .highbox {
                height: 315px;
            }
            .highbox-dealer {
                height: 320px;
            }
            .whitefont {
                color: #FFFFFF;
            }
            .yellowfont {
                color:#E9E10E;
            }
            div.inventory-main-yellow {
                border: 4px solid #FFCE3C;
                -moz-border-radius: 4px / 6px;
                -webkit-border-radius: 4px / 6px;
                border-radius: 4px / 6px;
                -moz-background-clip: padding;
                -webkit-background-clip: padding-box;
                background-clip: padding-box;
                background-color: #FFCE3C;
                -moz-box-shadow: 0 0 5px rgba(0,0,0,.13);
                -webkit-box-shadow: 0 0 5px rgba(0,0,0,.13);
                box-shadow: 0 0 5px rgba(0,0,0,.13);
                margin-bottom: 20px;
                font-family: Oxygen;
            }
            div.inventory-main-blue {
                border: 4px solid #0058A5;
                -moz-border-radius: 4px / 6px;
                -webkit-border-radius: 4px / 6px;
                border-radius: 4px / 6px;
                -moz-background-clip: padding;
                -webkit-background-clip: padding-box;
                background-clip: padding-box;
                background-color: #0058A5;
                -moz-box-shadow: 0 0 5px rgba(0,0,0,.13);
                -webkit-box-shadow: 0 0 5px rgba(0,0,0,.13);
                box-shadow: 0 0 5px rgba(0,0,0,.13);
                margin-bottom: 20px;
                font-family: Oxygen;
            }
            .mytext2 {
                font-size: 14px;
                line-height: 18px;
                color: #FFF;
                font-family: Oxygen;
            }
            body {
                background-color:#353535;
            }
            -->
        </style>





        <div class="col-lg-2 col-md-2 col-sm-3 hidden-xs highbox">
            <div class="margin-bottom-20 scroll_effect fadeIn">
                <div align="center" class="inventory-main-yellow">

                    <a class="dealerhlcar" href="https://crautos.com/autosusados/cardetail.cfm?c=71475902">

                        <table width="100%" height="280">
                            <tr>
                                <td class="brandtitle" bgcolor="#FFCE3C" height="15" align="center">Toyota</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td align="center">

                                    <iframe id="datamain" src="https://crautos.com/autosusados/showpictured.cfm?f=71475902-t.jpg&c=71475902" height=115 marginwidth=0 marginheight=0 hspace=0 vspace=0 frameborder=0 scrolling=no></iframe>

                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td class="modeltitle" height="45" valign="top">HILUX 3.0 - <b>2016 </b>
                                    <div class="transtitle">

                                        (Manual)

                                    </div>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td height="14">
                                    <div class="marqueefont">
                                        <div class="inner stop">
                                            <marquee scrollamount="3">Excelente estado  manteniendo de agencia  radio con pantalla y cámara de retroceso </marquee>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr bgcolor="#FFFFFF">
                                <td class="precio" height="22"> &nbsp;&cent; 24,000,000</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td class="preciodolares" height="15"> &nbsp;($38,156)*

                                    &nbsp;<img src="https://crautos.com/autosusados/bac.png" width="40">

                                </td>
                            </tr>

                            <tr bgcolor="#FFFFFF">
                                <td align="center">

                                    <img src="https://crautos.com/autosusados/images/nooption.gif">

                                </td>
                            </tr>
                        </table>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-3 hidden-xs highbox">
            <div class="margin-bottom-20 scroll_effect fadeIn">
                <div align="center" class="inventory-main-yellow">

                    <a class="dealerhlcar" href="https://crautos.com/autosusados/cardetail.cfm?c=6402937">

                        <table width="100%" height="280">
                            <tr>
                                <td class="brandtitle" bgcolor="#FFCE3C" height="15" align="center">Hyundai</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td align="center">

                                    <iframe id="datamain" src="https://crautos.com/autosusados/showpictured.cfm?f=6402937-t.jpg&c=6402937" height=115 marginwidth=0 marginheight=0 hspace=0 vspace=0 frameborder=0 scrolling=no></iframe>

                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td class="modeltitle" height="45" valign="top">ELANTRA SE - <b>2017 </b>
                                    <div class="transtitle">

                                        (Autom&aacute;tico)

                                    </div>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td height="14">
                                    <div class="marqueefont">
                                        <div class="inner stop">
                                            <marquee scrollamount="3">Como nuevo - poco uso  - recibimos y financiamos - auto impecable</marquee>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr bgcolor="#FFFFFF">
                                <td class="precio" height="22"> &nbsp;&cent;  9,475,000</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td class="preciodolares" height="15"> &nbsp;($15,064)*

                                    &nbsp;<img src="https://crautos.com/autosusados/bac.png" width="40">

                                </td>
                            </tr>

                            <tr bgcolor="#FFFFFF">
                                <td align="center">

                                    <img src="https://crautos.com/autosusados/images/nooption.gif">

                                </td>
                            </tr>
                        </table>
                    </a>
                </div>
            </div>
        </div>





        <div class="col-lg-2 col-md-2 col-sm-3 hidden-xs highbox" align="center">
            <div class="margin-bottom-20 scroll_effect fadeIn">
                <div align="center" class="inventory-main-yellow">

                    <a class="dealerhlcar" href="https://crautos.com/autosusados/cardetail.cfm?c=35352411">

                        <table width="100%" height="280">
                            <tr>
                                <td class="brandtitle" bgcolor="#FFCE3C" height="15" align="center">Hyundai</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td align="center">

                                    <iframe id="datamain" src="https://crautos.com/autosusados/showpictured.cfm?f=35352411-t.jpg&c=35352411" height=115 marginwidth=0 marginheight=0 hspace=0 vspace=0 frameborder=0 scrolling=no></iframe>

                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td class="modeltitle" height="45" valign="top">GRAND I 10 - <b>2017 </b>
                                    <div class="transtitle">

                                        (Manual)

                                    </div>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td height="14">
                                    <div class="marqueefont">
                                        <div class="inner stop">
                                            <marquee scrollamount="3">Como nuevo no se necesita </marquee>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr bgcolor="#FFFFFF">
                                <td class="precio" height="22"> &nbsp;&cent;  6,200,000</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td class="preciodolares" height="15"> &nbsp;($9,857)*

                                    &nbsp;<img src="https://crautos.com/autosusados/bac.png" width="40">

                                </td>
                            </tr>

                            <tr bgcolor="#FFFFFF">
                                <td align="center">

                                    <img src="https://crautos.com/autosusados/images/nooption.gif">

                                </td>
                            </tr>
                        </table>
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>