/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package registrarAutos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LEANDRO
 */
public class registrarAutosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/website", "root", "12345678");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from autos");

            out.print("<html lang=\"en\">");
            out.print("<head>");
            out.print("<meta charset=\"UTF-8\"><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
            out.print("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU\" crossorigin=\"anonymous\">");
            out.print("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ\" crossorigin=\"anonymous\"></script>");
            out.print("<script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js\" integrity=\"sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN\" crossorigin=\"anonymous\"></script>");
            out.print("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js\" integrity=\"sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/\" crossorigin=\"anonymous\"></script>");
            out.print("<link href=\"css/estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>");

            out.print("<title>Autos Disponibles</title>");
            out.print("</head>");
            out.print("<body>");

            out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">");
            out.print("<div class=\"container-fluid\">");
            out.print("<a href=\"Principal.jsp\"><span class=\"logo\"><img class=\"img-responsive\" src=\"imagen/crautoslogo.png\" hspace=\"5\" vspace=\"8\" width=\"300\"></span></a>");
            out.print("<button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
            out.print("<span class=\"navbar-toggler-icon\"></span>");
            out.print("</button>");
            out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
            out.print("<ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">");
            out.print("</ul>");
            out.print("<a class=\"btn btn-xs btn-success\" href=\"login.jsp\" >Login</a>");
            out.print("</div>");
            out.print("</div>");
            out.print("</nav>");

            out.print("<br><br>");
            out.print("<div class=\"container\">");
            out.print("<table class=\"table table-hover\">");
            out.print("  <thead>");
            out.print("    <tr>");
            out.print("      <th scope=\"col\">ID</th>");
            out.print("      <th scope=\"col\">Marca</th>");
            out.print("      <th scope=\"col\">Modelo</th>");
            out.print("      <th scope=\"col\">Año</th>");
            out.print("      <th scope=\"col\">Estilo</th>");
            out.print("    </tr>");
            out.print("  </thead>");
            out.print("  <tbody>");

            while (resultSet.next()) {
                out.print("      <th scope=\"row\">" + resultSet.getInt(1) + "</th>");
                out.print("      <td>" + resultSet.getString(2) + "</td>");
                out.print("      <td>" + resultSet.getString(3) + "</td>");
                out.print("      <td>" + resultSet.getInt(4) + "</td>");
                out.print("      <td>" + resultSet.getString(5) + "</td>");
                out.print("    </tr>");
            }

            out.print(" </tbody>");
            out.print("</table>");
            out.print("<a href='registroAutos.jsp'>Registrar otro Auto</a>");
            out.print("</div>");
            out.print("</body>");
            out.print("</html>");

            resultSet.close();
            statement.close();
            connection.close();
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
