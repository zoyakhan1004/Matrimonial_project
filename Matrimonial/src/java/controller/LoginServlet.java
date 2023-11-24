/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import dto.UserDTOLogin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuth;

/**
 *
 * @author ADM
 */
public class LoginServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        UserDTOLogin user= new UserDTOLogin();
        user.setUsername(username);
        user.setPassword(password);
        
        LoginAuth l1=new LoginAuth();
        Boolean login=l1.isLogin(user);
        
        if(login){
            HttpSession session=request.getSession(true);
            session.setAttribute("username",username);
            response.sendRedirect("home.jsp");
        }
        else{
            response.sendRedirect("login.html");
        }
    }
}

