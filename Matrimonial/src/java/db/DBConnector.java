/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADM
 */
public class DBConnector {
    
    static Connection con=null;
    static Statement st=null;
    
    static{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");
            
            st=con.createStatement();
        }
        catch(SQLException e){
            System.out.println(e);         
        } catch (ClassNotFoundException ex) {
            System.out.println(ex); 
        }
    }
    
    public static Connection getConnection(){
        return con;
    }
    public static Statement getStatement(){
        return st;
    }
    
}
