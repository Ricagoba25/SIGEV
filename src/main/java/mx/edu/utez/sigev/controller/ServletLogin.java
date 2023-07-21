package mx.edu.utez.sigev.controller;

import mx.edu.utez.sigev.model.dao.DaoLogin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletLogin", urlPatterns = "/ServletLogin")
public class ServletLogin extends HttpServlet {

    DaoLogin daoLogin = new DaoLogin();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("llegue al servlet");
        String correos = req.getParameter("correo");
        String contrasenias = req.getParameter("contrasenia");

        List <String> respuesta = daoLogin.login(correos, contrasenias);

        if(respuesta.get(0).equals("organizacion")){
            System.out.println("Entro Organizacion");
            req.setAttribute("nombre" , respuesta.get(1));
            req.getRequestDispatcher("jsp/organizacion/perfilOrganizacion.jsp").forward(req, resp);


        }else if (respuesta.get(0).equals("voluntario")){
            System.out.println("Entro Voluntario");
            req.setAttribute("nombre" , respuesta.get(1));
            req.getRequestDispatcher("jsp/voluntario/perfilVoluntario.jsp").forward(req, resp);
        }else{
            req.setAttribute("exitoso" , false);
            System.out.println("No se encontro Usuario");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }






    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }


    @Override
    public void destroy() {
        super.destroy();
    }
}
