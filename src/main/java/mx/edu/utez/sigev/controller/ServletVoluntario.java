package mx.edu.utez.sigev.controller;

import mx.edu.utez.sigev.model.bean.BeanVoluntario;
import mx.edu.utez.sigev.model.dao.DaoVoluntario;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name= "ServletVoluntario", urlPatterns = "/ServletVoluntario")
public class ServletVoluntario extends HttpServlet {

    DaoVoluntario daoVoluntario = new DaoVoluntario();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String accion = req.getParameter("accion");

        switch (accion){
            case "agregarVoluntario":
                System.out.println("hola voluntario");
                System.out.println("Datos" + req );

                String correoS = req.getParameter("correo");
                String nombreS = req.getParameter("nombreVoluntario");
                String apellido1S = req.getParameter("apellido1");
                String apellido2S = req.getParameter("apellido2");
                String telefonoS = req.getParameter("telefono");
                String contraseniaS = req.getParameter("contrasenia");


                BeanVoluntario agregarVoluntario = new BeanVoluntario();

                agregarVoluntario.setCorreo(correoS);
                agregarVoluntario.setNombre(nombreS);
                agregarVoluntario.setApellido1(apellido1S);
                agregarVoluntario.setApellido2(apellido2S);
                agregarVoluntario.setTelefono(telefonoS);
                agregarVoluntario.setContrasenia(contraseniaS);


                boolean rest = daoVoluntario.insert(agregarVoluntario);

                    if(rest){
                        req.setAttribute("exitoso" , true);

                    }else{
                        req.setAttribute("exitoso" , false);
                    }
                System.out.println("LLEGASTE AL INDEX");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
                break;



        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
