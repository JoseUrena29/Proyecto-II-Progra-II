/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package products;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LEANDRO
 */
public class registroServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/website", "root", "12345678");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from products");

            out.print("<html lang=\"en\">");
            out.print("<head>");
            out.print("<meta charset=\"UTF-8\"><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
            out.print("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU\" crossorigin=\"anonymous\">");
            out.print("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ\" crossorigin=\"anonymous\"></script>");
            out.print("<script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js\" integrity=\"sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN\" crossorigin=\"anonymous\"></script>");
            out.print("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js\" integrity=\"sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/\" crossorigin=\"anonymous\"></script>");
            out.print("<title>Website</title>");
            out.print("</head>");
            out.print("<body>");

            out.print("<div class=\"container\">");
            out.print("<table class=\"table table-hover\">");
            out.print("  <thead>");
            out.print("    <tr>");
            out.print("      <th scope=\"col\">id</th>");
            out.print("      <th scope=\"col\">Name</th>");
            out.print("      <th scope=\"col\">Price</th>");
            out.print("      <th scope=\"col\">User</th>");
            out.print("    </tr>");
            out.print("  </thead>");
            out.print("  <tbody>");

            while (resultSet.next()) {
                out.print("    <tr onclick=" + "verDetalle(" + resultSet.getInt(1) + ",'" + resultSet.getString(2) + "'," + resultSet.getInt(3) + ")>");
                out.print("      <th scope=\"row\">" + resultSet.getInt(1) + "</th>");
                out.print("      <td>" + resultSet.getString(2) + "</td>");
                out.print("      <td>" + resultSet.getInt(3) + "</td>");
                out.print("      <td>" + resultSet.getString(4) + "</td>");
                out.print("    </tr>");
            }

            out.print(" </tbody>");
            out.print("</table>");
            out.print("<a href='index.html'>Create another</a>");
            out.print("</div>");
            out.print(" <script type='text/javascript'>");
            out.print("     function verDetalle(id, name, price){");
            out.print("         window.location.href = 'editProduct.jsp?id=' + id + '&name=' + name + '&price=' + price;");
            out.print("     }");
            out.print(" </script>");
            out.print("</body>");
            out.print("</html>");

            statement.close();
            resultSet.close();
        } catch (Exception e) {
            {
                out.println(e.getMessage());
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
