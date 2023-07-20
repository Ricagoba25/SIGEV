package mx.edu.utez.sigev.controller;

import mx.edu.utez.sigev.model.BeanOrganizacion;
import mx.edu.utez.sigev.model.DaoOrganizacion;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletOrganizacion", urlPatterns = "/ServletOrganizacion")
public class ServletOrganizacion extends HttpServlet {

    DaoOrganizacion daoOrganizacion = new DaoOrganizacion();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String accion = req.getParameter("accion");

        switch (accion) {
            case "agregarOrganizacion":
                System.out.println("hola organizacion");
                System.out.println("Datos" + req);

                String rfcS = req.getParameter("rfc");
                String correoS = req.getParameter("correo");
                String nombreS = req.getParameter("nombre");
                String razonSocial2S = req.getParameter("razonSocial");
                String telefonoS = req.getParameter("telefono");
                String contraseniaS = req.getParameter("contrasenia");
                String direccionS = req.getParameter("direccion");


                BeanOrganizacion agregarOrganizacion = new BeanOrganizacion();

                agregarOrganizacion.setRfc(rfcS);
                agregarOrganizacion.setCorreo(correoS);
                agregarOrganizacion.setNombre(nombreS);
                agregarOrganizacion.setRazonSocial(razonSocial2S);
                agregarOrganizacion.setTelefono(telefonoS);
                agregarOrganizacion.setContrasenia(contraseniaS);
                agregarOrganizacion.setDireccion(direccionS);


                boolean rest = daoOrganizacion.insert(agregarOrganizacion);
                System.out.println("valor de rest " + req);

                break;


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