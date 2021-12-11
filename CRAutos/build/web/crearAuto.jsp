<%-- 
    Document   : crearAuto
    Created on : 9 dic 2021, 20:31:16
    Author     : LEANDRO
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%!
    Connection con;
    PreparedStatement ps;

    public void jspInit() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/website", "root", "12345678");
            ps = con.prepareStatement("INSERT INTO autos (marca,modelo,anio,estilo) VALUES (?,?,?,?)");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public void jspDestroy() {
        try {
            con.close();
            ps.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
%>

<%
    String marca = request.getParameter("txtMarca");
    String modelo = request.getParameter("txtModelo");
    int anio = Integer.parseInt(request.getParameter("txtAnio"));
    String estilo = request.getParameter("txtEstilo");

    ps.setString(1, marca);
    ps.setString(2, modelo);
    ps.setInt(3, anio);
    ps.setString(4, estilo);

    ps.executeUpdate();
%>

<%
    request.getRequestDispatcher("registrarAutosServlet").forward(request, response);
%>