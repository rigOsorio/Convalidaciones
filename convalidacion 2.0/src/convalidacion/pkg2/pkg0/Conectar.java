/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package convalidacion.pkg2.pkg0;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author Alumno
 */
public class Conectar {
    public Conectar(){
        
    }
    
    public static Connection getConexion(){
        Connection cn=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost/db_universidades3?useUnicode=true&characterEncoding=utf-8","root","");
        }catch(ClassNotFoundException | SQLException e){
            System.out.println("error de conexion");
        }
        return cn;
    }
    public static ResultSet getTabla(String consulta){
        Connection cn=getConexion();
        Statement st;
        ResultSet datos=null;
        try{
            st=cn.createStatement();
            datos=st.executeQuery(consulta);
            
        }catch (Exception e){
            System.out.println(e.toString());
        }

        return datos;
        
    }
    
    public static void cerrarConec(){
        try {
            getConexion().close();
        } catch (SQLException ex) {
           System.out.print( ex);
        }
    }
}
