package mx.edu.utez.sigev.model.dao;

import mx.edu.utez.sigev.model.bean.BeanVoluntario;
import mx.edu.utez.sigev.utils.MysqlConector;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DaoVoluntario {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    MysqlConector mysqlConector = new MysqlConector();

    private final String GET_VOLUNTARIOS = "select * from voluntario";
    private final String GET_VOLUNTARIO = "select * from voluntario where id = ?";
    private final String CREATE_VOLUNTARIO = "INSERT INTO Voluntario (correo, nombre, apellido1, apellido2, telefono, contrasenia) VALUES (?, ?, ?, ?, ?, ?)";
    private final String MODIFICAR_VOLUNTARIO = "UPDATE voluntario set nombre = ?, correo = ?, apellido1 = ?, apellido2 = ?, telefono = ?, contrasenia = ?";
    private final String BORRAR_VOLUNTARIO = "DELETE * FROM voluntario where id = ?";

    public List voluntarios() {
        List<BeanVoluntario> voluntarios = new ArrayList<>();

        try {
            conn = mysqlConector.connect();
            String query = GET_VOLUNTARIOS;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                BeanVoluntario voluntario = new BeanVoluntario();

                voluntario.setIdVoluntario(rs.getInt("idVoluntario"));
                voluntario.setCorreo(rs.getString("correo"));
                voluntario.setNombre(rs.getString("nombre"));
                voluntario.setApellido1(rs.getString("apellido1"));
                voluntario.setApellido2(rs.getString("apellido2"));
                voluntario.setTelefono(rs.getString("telefono"));
                voluntario.setContrasenia(rs.getString("contrasenia"));


                voluntarios.add(voluntario);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return voluntarios;
    }

    public boolean insert(BeanVoluntario agregarvoluntario) {
        boolean rest = false;
        // System.out.println("Agregar Voluntario " + agregarvoluntario.toString()); Muestra las propiedades del objeto
        try {
            conn = mysqlConector.connect();
            String query = CREATE_VOLUNTARIO;
            ps = conn.prepareStatement(query);

            ps.setString(1, agregarvoluntario.getCorreo());
            ps.setString(2, agregarvoluntario.getNombre());
            ps.setString(3, agregarvoluntario.getApellido1());
            ps.setString(4, agregarvoluntario.getApellido2());
            ps.setString(5, agregarvoluntario.getTelefono());
            ps.setString(6, agregarvoluntario.getContrasenia());

            if (ps.executeUpdate() > 0){
                rest = true;
                System.out.println("Se Registro");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        System.out.println("valor restdao" + rest);
        return rest;
    }
}
