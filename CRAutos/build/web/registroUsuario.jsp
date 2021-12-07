<%-- 
    Document   : registroUsuario
    Created on : 6 dic 2021, 17:50:44
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
            ps = con.prepareStatement("INSERT INTO user VALUES (?, ?, ?, ?)");
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
    int id = Integer.parseInt(request.getParameter("txtId"));
    String name = request.getParameter("txtName");
    String email = request.getParameter("txtEmail");
    int telefono = Integer.parseInt(request.getParameter("txtPrice"));

    ps.setInt(1, id);
    ps.setString(2, name);
    ps.setString(3, email);
    ps.setInt(4, telefono);

    ps.executeUpdate();
%>

<%
    request.getRequestDispatcher("registroServlet").forward(request, response);
%>
