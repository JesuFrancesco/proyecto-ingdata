/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paq.ventanas;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.swing.JOptionPane;

/**
 *
 * @author Jesu
 */
public class VentanaTransaccion extends javax.swing.JFrame {

    /**
     * Creates new form frameTransaccion
     */
    private final Connection conexionSQL;
    public VentanaTransaccion(Connection c) {
        this.conexionSQL = c;
        initComponents();
        setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        jTextField1 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        campoProd_Inst = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        campoDNI_Proveedor = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        botonCliente_r = new javax.swing.JRadioButton();
        botonProveedor_r = new javax.swing.JRadioButton();
        jLabel6 = new javax.swing.JLabel();
        botonSalir = new javax.swing.JButton();
        botonInsertTrans = new javax.swing.JButton();
        bg = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(610, 630));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 400, 200, -1));
        jPanel1.add(jTextField4, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 260, 200, -1));

        campoProd_Inst.setFont(new java.awt.Font("Yu Gothic UI Semibold", 1, 18)); // NOI18N
        campoProd_Inst.setForeground(new java.awt.Color(255, 255, 255));
        campoProd_Inst.setText("ID del producto");
        jPanel1.add(campoProd_Inst, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 400, -1, 20));
        jPanel1.add(jTextField5, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 330, 200, -1));

        campoDNI_Proveedor.setFont(new java.awt.Font("Yu Gothic UI Semibold", 1, 18)); // NOI18N
        campoDNI_Proveedor.setForeground(new java.awt.Color(255, 255, 255));
        campoDNI_Proveedor.setText("DNI Cliente");
        jPanel1.add(campoDNI_Proveedor, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 330, -1, 20));

        jLabel4.setFont(new java.awt.Font("Yu Gothic UI Semibold", 1, 18)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 255, 255));
        jLabel4.setText("Monto");
        jPanel1.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 260, -1, 20));

        botonCliente_r.setBackground(new java.awt.Color(255, 204, 204));
        buttonGroup1.add(botonCliente_r);
        botonCliente_r.setFont(new java.awt.Font("Meiryo", 0, 18)); // NOI18N
        botonCliente_r.setSelected(true);
        botonCliente_r.setText("CLIENTE");
        botonCliente_r.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonCliente_rActionPerformed(evt);
            }
        });
        jPanel1.add(botonCliente_r, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 140, -1, -1));

        botonProveedor_r.setBackground(new java.awt.Color(255, 204, 204));
        buttonGroup1.add(botonProveedor_r);
        botonProveedor_r.setFont(new java.awt.Font("Meiryo", 0, 18)); // NOI18N
        botonProveedor_r.setText("PROVEEDOR");
        botonProveedor_r.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonProveedor_rActionPerformed(evt);
            }
        });
        jPanel1.add(botonProveedor_r, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 140, -1, -1));

        jLabel6.setFont(new java.awt.Font("Trebuchet MS", 1, 48)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("Transacción");
        jPanel1.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 610, 100));

        botonSalir.setText("Salir");
        botonSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonSalirActionPerformed(evt);
            }
        });
        jPanel1.add(botonSalir, new org.netbeans.lib.awtextra.AbsoluteConstraints(490, 570, 90, -1));

        botonInsertTrans.setText("Registrar transaccion");
        botonInsertTrans.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonInsertTransActionPerformed(evt);
            }
        });
        jPanel1.add(botonInsertTrans, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 550, 180, 40));

        bg.setIcon(new javax.swing.ImageIcon(getClass().getResource("/paq/img/f3.jpg"))); // NOI18N
        jPanel1.add(bg, new org.netbeans.lib.awtextra.AbsoluteConstraints(-90, -490, 790, 1200));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 610, 630));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void botonCliente_rActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonCliente_rActionPerformed
        campoDNI_Proveedor.setText("DNI Cliente");
        campoProd_Inst.setText("ID del producto");
    }//GEN-LAST:event_botonCliente_rActionPerformed

    private void botonProveedor_rActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonProveedor_rActionPerformed
        campoDNI_Proveedor.setText("ID Proveedor");
        campoProd_Inst.setText("ID del instrumento");
    }//GEN-LAST:event_botonProveedor_rActionPerformed

    private void botonSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonSalirActionPerformed
        dispose();
    }//GEN-LAST:event_botonSalirActionPerformed

    private void botonInsertTransActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonInsertTransActionPerformed
        // Obtener momento del dia
        LocalDateTime ahora = LocalDateTime.now();
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yy hh:mm:ss a");
        String momentoDia = ahora.format(formato);
        JOptionPane.showMessageDialog(null, momentoDia);
        try {
            String queryCliente = "INSERT INTO TRANSACCIONCLIENTE(ID_transaccion, momentodia, id_cliente, id_producto) VALUES("+ campoID_Mascota.getText() +", '"+ campoNombreMa.getText() +"', '"+ campoRaza.getText() + "', to_date('"+campoFechaMascota.getText()+"', 'DD/MM/RR')"+", '" + campoEspecie.getText() + "')";            
            String queryProveedor = "INSERT INTO TRANSACCIONPROVEEDOR(ID_transaccion, momentodia, id_cliente, id_producto) VALUES("+ campoID_Mascota.getText() +", '"+ campoNombreMa.getText() +"', '"+ campoRaza.getText() + "', to_date('"+campoFechaMascota.getText()+"', 'DD/MM/RR')"+", '" + campoEspecie.getText() + "')";            
            
            Statement statement = conexionSQL.createStatement();

//          System.out.println(queryString);
            ResultSet resultSet = statement.executeQuery((botonCliente_r.isSelected())? queryCliente: queryProveedor); 

            // Cerrar resultSet y sentencia
            resultSet.close();
            statement.close();
            

            JOptionPane.showMessageDialog(null, "Transaccion de " + ((botonCliente_r.isSelected())? "cliente":"proveedor") +" realizada.", "INSERT REALIZADO CON EXITO", 1);
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Algo salio mal:\n" + ex.getMessage(), "Error en query", 2);
        }
    }//GEN-LAST:event_botonInsertTransActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel bg;
    private javax.swing.JRadioButton botonCliente_r;
    private javax.swing.JButton botonInsertTrans;
    private javax.swing.JRadioButton botonProveedor_r;
    private javax.swing.JButton botonSalir;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JLabel campoDNI_Proveedor;
    private javax.swing.JLabel campoProd_Inst;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    // End of variables declaration//GEN-END:variables
}
