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
            // Load the Oracle JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Create a connection
            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@"+ip+":1521:XE", nombre, pass);
            
            System.out.println("Conexion establecida");
            
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
