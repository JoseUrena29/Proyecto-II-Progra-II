<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>

<%!
    Connection con;
    PreparedStatement ps;

    public void jspInit() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/website", "root", "vargas");
            ps = con.prepareStatement("UPDATE products SET name = ?, price = ? WHERE id = ?");
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
    int price = Integer.parseInt(request.getParameter("txtPrice"));
    int id = Integer.parseInt(request.getParameter("txtId"));

    ps.setString(1, name);
    ps.setInt(2, price);
    ps.setInt(3, id);

    ps.executeUpdate();
%>

<%
    request.getRequestDispatcher("productServlet").forward(request, response);
%>


