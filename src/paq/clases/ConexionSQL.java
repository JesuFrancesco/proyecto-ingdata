/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paq.clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Jesu
 */
public class ConexionSQL {
    public static Connection conectar(String ip, String nombre, String pass){
        try {
            // Cargar el driver JDBC (version 8) y verificar conexión
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@"+ip+":1521:XE", nombre, pass);
            System.out.println("Conexion establecida en " + ip.trim() + " con usuario '" + nombre + "'.");
            return connection;
            
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "Driver OracleJDBC no encontrado.", "ERROR OJDBC", 0);
            return null;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "No se ha podido conectar al servidor SQL.\n" + e.getLocalizedMessage(), "ERROR OJDBC", 0);
            return null;
        }
    }
}
