/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.UserDTORegister;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ADM
 */
public class Registrant {
    public boolean isRegister(UserDTORegister user)
    {
        
        String name=user.getName();
        String dob=user.getDob();
        String phone=user.getPhone();
        String email=user.getEmail();
        String aadhar=user.getAadhar();
        String qualification=user.getQualification();
        String work=user.getWork();
        String income=user.getIncome();
        String religion=user.getReligion();
        String gender=user.getGender();
        String diet=user.getDiet();
        String status=user.getStatus();
        String age=user.getAge();
        String username=user.getUsername();
        String password=user.getPassword();
        
        int i=0;
        try
        {
            Statement st= DBConnector.getStatement();
            String query=  "INSERT INTO users VALUES('"+name+"','"+dob+"','"+phone+"','"+email+"','"+aadhar+"','"+qualification+"','"+work+"','"+income+"','"+religion+"','"+gender+"','"+diet+"','"+status+"','"+age+"','"+username+"','"+password+"')";
            
            i= st.executeUpdate(query);
        }
        catch(SQLException e){
            System.out.println(e);
        }
        if(i>0)
        {
            return true;
        }
        return false;
    }
}
