/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.UserDTOUpdate;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ADM
 */
public class Updater {
    public boolean isUpdate(UserDTOUpdate user)
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
            String query=  "UPDATE users SET name='"+name+"',dob='"+dob+"',phone='"+phone+"',email='"+email+"',aadhar='"+aadhar+"',qualification='"+qualification+"',work='"+work+"',income='"+income+"',religion='"+religion+"',gender='"+gender+"',diet='"+diet+"',status='"+status+"',age='"+age+"',password='"+password+"'where username='"+username+"'";
            System.out.println(query);
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
