<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>

<%!
    Connection con;
    PreparedStatement ps;

    public void jspInit() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/website", "root", "12345678");
            ps = con.prepareStatement("DELETE FROM products WHERE id = ?");
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
    int id = Integer.parseInt(request.getParameter("id"));

    ps.setInt(1, id);

    ps.executeUpdate();
%>

<%
    request.getRequestDispatcher("productServlet").forward(request, response);
%>


