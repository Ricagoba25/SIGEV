package mx.edu.utez.sigev.controller;

import mx.edu.utez.sigev.model.dao.DaoLogin;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
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
            req.setAttribute("nombreGeneral" , respuesta.get(1));

            req.setAttribute("rfc" , respuesta.get(2));
            req.setAttribute("correo" , respuesta.get(3));
            req.setAttribute("nombre" , respuesta.get(4));
            req.setAttribute("razonSocial" , respuesta.get(5));
            req.setAttribute("telefono" , respuesta.get(6));
            req.setAttribute("direccion" , respuesta.get(7));
            req.getRequestDispatcher("jsp/organizacion/perfilOrganizacion.jsp").forward(req, resp);


        }else if (respuesta.get(0).equals("voluntario")){
            System.out.println("Entro Voluntario");
            req.setAttribute("nombreGeneral" , respuesta.get(1));

            req.setAttribute("idVoluntario" , respuesta.get(2));
            req.setAttribute("correo" , respuesta.get(3));
            req.setAttribute("nombre" , respuesta.get(4));
            req.setAttribute("apellido1" , respuesta.get(5));
            req.setAttribute("apellido2" , respuesta.get(6));
            req.setAttribute("telefono" , respuesta.get(7));
            req.setAttribute("curp" , respuesta.get(8));
            System.out.println("respuesta" + respuesta);



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
