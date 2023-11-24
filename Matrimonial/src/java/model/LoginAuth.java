/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.UserDTOLogin;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ADM
 */
public class LoginAuth {
    public boolean isLogin(UserDTOLogin user){
        
        String username=user.getUsername();
        String password=user.getPassword();
        
        String tablepass="";
        
        try{
            Statement st=DBConnector.getStatement();
            
            String query= "SELECT password FROM users where username='"+username+"'";
            
            ResultSet rs= st.executeQuery(query);
            
            if(rs.next()){
                tablepass=rs.getString(1);
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        if(username!="" && password!="" && !username.trim().equals("") && tablepass.equals(password)){
            return true;
        }
        return false;
    }
}
    

