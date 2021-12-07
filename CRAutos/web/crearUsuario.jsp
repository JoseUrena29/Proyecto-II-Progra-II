<%-- 
    Document   : crearUsuario
    Created on : 7 dic 2021, 13:59:30
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
            ps = con.prepareStatement("INSERT INTO users VALUES (?, ?, ?)");
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
    String name = request.getParameter("txtName");
    String email = request.getParameter("txtEmail");
    int telefono = Integer.parseInt(request.getParameter("txtTelefono"));

    ps.setString(1, name);
    ps.setString(2, email);
    ps.setInt(3, telefono);

    ps.executeUpdate();
%>

<%
    request.getRequestDispatcher("registroUsuario").forward(request, response);
%>
