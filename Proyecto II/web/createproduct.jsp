<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>

<%!
    Connection con;
    PreparedStatement ps;

    public void jspInit() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/website", "root", "12345678");
            ps = con.prepareStatement("INSERT INTO products VALUES (?, ?, ?, ?)");
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
    int price = Integer.parseInt(request.getParameter("txtPrice"));
    String user = request.getParameter("txtUser");

    ps.setInt(1, id);
    ps.setString(2, name);
    ps.setInt(3, price);
    ps.setString(4, user);
    
    ps.executeUpdate();
%>

<% 
    request.getRequestDispatcher("productServlet").forward(request, response);
%>


