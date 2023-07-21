package mx.edu.utez.sigev.model.dao;

import mx.edu.utez.sigev.model.bean.BeanOrganizacion;
import mx.edu.utez.sigev.utils.MysqlConector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoOrganizacion {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    MysqlConector mysqlConector = new MysqlConector();

    private final String GET_ORGANIZACIONS = "select * from Organizacion";
    private final String GET_ORGANIZACION = "select * from organizacion where id = ?";
    private final String CREATE_ORGANIZACION = "INSERT INTO Organizacion (rfc, correo, nombre, razonSocial, telefono, contrasenia, direccion) VALUES (?, ?, ?, ?, ?, ?, ?)";
    private final String MODIFICAR_ORGANIZACION = "UPDATE voluntario set nombre = ?, correo = ?, apellido1 = ?, apellido2 = ?, telefono = ?, contrasenia = ?";
    private final String BORRAR_ORGANIZACION = "DELETE * FROM voluntario where id = ?";

    public List organizacions() {
        List<BeanOrganizacion> organizacions = new ArrayList<>();

        try {
            conn = mysqlConector.connect();
            String query = GET_ORGANIZACIONS;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                BeanOrganizacion organizacion = new BeanOrganizacion();

                organizacion.setRfc(rs.getString("rfc"));
                organizacion.setCorreo(rs.getString("correo"));
                organizacion.setNombre(rs.getString("nombre"));
                organizacion.setRazonSocial(rs.getString("razonSocial"));
                organizacion.setTelefono(rs.getString("telefono"));
                organizacion.setContrasenia(rs.getString("contrasenia"));
                organizacion.setDireccion(rs.getString("direccion"));


                organizacions.add(organizacion);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return organizacions;
    }

    public boolean insert(BeanOrganizacion agregarorganizacion) {
        boolean rest = false;
        System.out.println("Agregar Organizacion " + agregarorganizacion.toString()); //Muestra las propiedades del objeto

        try {
            conn = mysqlConector.connect();
            String query = CREATE_ORGANIZACION;
            ps = conn.prepareStatement(query);

            ps.setString(1, agregarorganizacion.getRfc());
            ps.setString(2, agregarorganizacion.getCorreo());
            ps.setString(3, agregarorganizacion.getNombre());
            ps.setString(4, agregarorganizacion.getRazonSocial());
            ps.setString(5, agregarorganizacion.getTelefono());
            ps.setString(6, agregarorganizacion.getContrasenia());
            ps.setString(7, agregarorganizacion.getDireccion());

            if (ps.executeUpdate() > 0){
                rest = true;
                System.out.println("Se Registro");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);

        }

        return rest;
    }

    public Object findOne(String correo, String contra) {
        BeanOrganizacion beanOrganizacion = new BeanOrganizacion();
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try {
            PreparedStatement stmt = con.prepareStatement("select * from Organizacion " + "where correo = ? AND contrasenia = ?");
            stmt.setString(1,correo);
            stmt.setString(2,contra);
            ResultSet res = stmt.executeQuery();
            if(res.next()){
                beanOrganizacion.setCorreo(res.getString("correo"));
                beanOrganizacion.setContrasenia(res.getString("contrasenia"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            cerrarConexiones("findOne");
        }
        return beanOrganizacion;
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
