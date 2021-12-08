<%-- 
    Document   : login
    Created on : 7 dic 2021, 0:55:58
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
            ps = con.prepareStatement("select * from users WHERE firstName = ? and email= ? ");
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
    String name = request.getParameter("txtloginName");
    String email = request.getParameter("txtloginEmail");
    int telefono = Integer.parseInt(request.getParameter("txtTelefono"));

    ps.setString(1, name);
    ps.setString(2, email);
    ps.setInt(3, telefono);

    ps.executeUpdate();
%>
<%
    request.getRequestDispatcher("registroUsuario").forward(request, response);
%>