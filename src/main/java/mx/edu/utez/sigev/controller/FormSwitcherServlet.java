package mx.edu.utez.sigev.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/formSwitcher")
public class FormSwitcherServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String formType = request.getParameter("formType");

        if ("form1".equals(formType)) {
            request.getRequestDispatcher("/registroOrganizacion.jsp").forward(request, response);
        } else if ("form2".equals(formType)) {
            request.getRequestDispatcher("/registroVoluntario.jsp").forward(request, response);
        } else {
            // Manejo para casos en los que no se selecciona ningún tipo de formulario válido
            response.getWriter().println("Tipo de formulario no válido");
        }
    }
}