/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author LEANDRO
 */
public class PersonaDAO implements Validar {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public int validar(Persona per) {
        String sql = "Select * from users where firstName=? and email=?";
        try {
            int r = 0;
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, per.getNombre());
            ps.setString(2, per.getCorreo());
            rs = ps.executeQuery();

            while (rs.next()) {
                r = r + 1;
                per.setNombre(rs.getString("firstName"));
                per.setCorreo(rs.getString("email"));
            }
            if (r == 1) {
                return 1;
            } else {
                return 0;
            }
        } catch (Exception e) {
            return 0;
        }
    }

}
