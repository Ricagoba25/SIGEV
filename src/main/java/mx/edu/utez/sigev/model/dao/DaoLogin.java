package mx.edu.utez.sigev.model.dao;

import mx.edu.utez.sigev.model.bean.BeanOrganizacion;
import mx.edu.utez.sigev.utils.MysqlConector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoLogin {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    MysqlConector mysqlConector = new MysqlConector();

    private final String GET_USER_ORGANIZACION = "select * from organizacion where correo = ? AND contrasenia = ?";
    private final String GET_USER_VOLUNTARIOS = "select * from voluntario where correo = ? AND contrasenia = ?";
    private final String GET_USER_ADMINISTRADORES = "select * from Administrador";


    public List login(String correo, String contrasenia) {
        List <String> login = new ArrayList<>();

        try {
            conn = mysqlConector.connect();
            String query = GET_USER_ORGANIZACION;
            ps = conn.prepareStatement(query);

            ps.setString(1,correo);
            ps.setString(2, contrasenia);

            rs = ps.executeQuery();
            String nombre;
            if(rs.next()){
                login.add("organizacion");
                nombre = rs.getString("nombre");
                login.add(nombre.toUpperCase());

            }else{
                cerrarConexiones("loginOrganizacion");
                conn = mysqlConector.connect();
                query = GET_USER_VOLUNTARIOS;
                ps = conn.prepareStatement(query);

                ps.setString(1,correo);
                ps.setString(2, contrasenia);

                rs = ps.executeQuery();
                if(rs.next()){
                    login.add("voluntario");
                    nombre = rs.getString("nombre");
                    login.add(nombre.toUpperCase());
                }else{
                    login.add("0");
                }
            }



        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            cerrarConexiones("loginGeneral");
        }

        return login;
    }

    public void cerrarConexiones(String method) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.out.println("Error al cerrar conexiones en el metodo: " + method + " mensaje: " + e.toString());
        }
    }
}
