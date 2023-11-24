/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.UserDTOUpdate;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Updater;

/**
 *
 * @author ADM
 */
public class UpdateServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("register.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String name=request.getParameter("name");
        String dob=request.getParameter("dob");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String aadhar=request.getParameter("aadhar");
        String qualification=request.getParameter("qualification");
        String work=request.getParameter("work");
        String income=request.getParameter("income");
        String religion=request.getParameter("religion");
        String gender=request.getParameter("gender");
        String diet=request.getParameter("diet");
        String status=request.getParameter("status");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        
        UserDTOUpdate user=new UserDTOUpdate();
        user.setName(name);
        user.setDob(dob);
        user.setPhone(phone);
        user.setEmail(email);
        user.setAadhar(aadhar);
        user.setQualification(qualification);
        user.setWork(work);
        user.setIncome(income);
        user.setReligion(religion);
        user.setGender(gender);
        user.setDiet(diet);
        user.setStatus(status);
        user.setUsername(username);
        user.setPassword(password);
        
        
        Updater u1 = new Updater();
        boolean update= u1.isUpdate(user);
        
        if(update)
        {
            response.sendRedirect("update1.jsp");
        }
        else
        {
            response.sendRedirect("update1.jsp");
        }
    }
}
