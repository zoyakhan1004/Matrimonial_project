<%-- 
    Document   : update1
    Created on : 2 Aug, 2023, 12:15:56 PM
    Author     : ADM
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
    Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: #828a95;  
}  
            .container {   
        padding-left: 206px;
    padding-top: 24px;
    padding-right: 130px;
    padding-bottom: 24px;  
        background-color: #181d27;
        color : white;
    }
    table{
       border-radius: 5px;
        margin: 0px 0px 0px -19px;
  box-shadow: 0 20px 40px rgba(38, 33, 61, 0.5);
  padding-left: 140px;
    }
    input{
        width:110px;
    }
    button{
        margin: 14px 0px 0px 399px;
    background: #f7f5fb;
    padding: 6px;
    }
        </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username = (String)session.getAttribute("username");
            if(username==null){
                response.sendRedirect("login.html");
            }
          %>
          <%
          try
        {
            ResultSet rs= null;
            Statement st= DBConnector.getStatement();
            String query=  "SELECT * from users where username='"+username+"'";
            rs= st.executeQuery(query);
            %>
            <br>
            <br>
            <br>
            <br>
            <div class="container">
            <table width="1000">
                <%-- <tr>
                    <td><b>Name:</b></td>
                    <td><b>Date Of Birth:</b></td>
                    <td><b>Phone:</b></td>
                    <td><b>Email:</b></td>
                    <td><b>Aadhar:</b></td>
                    <td><b>Qualification:</b></td>
                    <td><b>Work:</b></td>
                    <td><b>Income:</b></td>
                    <td><b>Religion:</b></td>
                    <td><b>Gender:</b></td>
                    <td><b>Diet:</b></td>
                    <td><b>Status:</b></td>
                </tr>
 --%>
        <%
     
     while(rs.next())
     {
         %>
         <form action="UpdateServlet" method="post">
             <tr>
             <th>Name:</th>
             <td><input type="text" value="<%=rs.getString(1)%>" name="name"></td>
             </tr>
             <tr>
         <th>Date Of Birth:</th>
         <td><input type="text" value="<%=rs.getString(2)%>" name="dob"></td>
          </tr>
           <tr>
           <th>Phone:</th>
            <td><input type="text" value="<%=rs.getString(3)%>" name="phone"></td>
               </tr>
               <tr>
               <th>Email:</th>
               <td><input type="text" value="<%=rs.getString(4)%>" name="email"></td>
               </tr>
               <tr>
<th>Aadhar:</th>
<td><input type="text" value="<%=rs.getString(5)%>" name="aadhar"></td>
</tr>
<tr>
<th>Qualification:</th>
<td><input type="text" value="<%=rs.getString(6)%>" name="qualification"></td>
</tr>
<tr>
<th>Work:</th>
 <td><input type="text" value="<%=rs.getString(7)%>" name="work"></td>
</tr>
<tr>
<th>Income:</th>
<td><input type="text" value="<%=rs.getString(8)%>" name="income"></td>
</tr>
<tr>
<th>Religion:</th>
<td><input type="text" value="<%=rs.getString(9)%>" name="religion"></td>
</tr>
<tr>
<th>Gender:</th>
<td><input type="text" value="<%=rs.getString(10)%>" name="gender"></td>
</tr>
<tr>
<th>Diet:</th>
<td><input type="text" value="<%=rs.getString(11)%>" name="diet"></td>
</tr>
<tr>
<th>Status:</th>
<td><input type="text" value="<%=rs.getString(12)%>" name="status"></td>
</tr>
<tr>
<th>Age:</th>
<td><input type="text" value="<%=rs.getString(13)%>" name="age"></td>
</tr>
<tr>
<th>Password:</th>
<td><input type="text" value="<%=rs.getString(15)%>" name="password"></td>
</tr>
<input type="hidden" value="<%=rs.getString(14)%>" name="username">
        <%--  <tr>
                    <td><input type="text" value="<%=rs.getString(1)%>" name="name"></td>
                    
                    <td><input type="text" value="<%=rs.getString(2)%>" name="dob"></td>
                    
                    <td><input type="text" value="<%=rs.getString(3)%>" name="phone"></td>
                    
                    <td><input type="text" value="<%=rs.getString(4)%>" name="email"></td>
                    
                    <td><input type="text" value="<%=rs.getString(5)%>" name="aadhar"></td>
                    
                    <td><input type="text" value="<%=rs.getString(6)%>" name="qualification"></td>
                    
                    <td><input type="text" value="<%=rs.getString(7)%>" name="work"></td>
                    
                    <td><input type="text" value="<%=rs.getString(8)%>" name="income"></td>
                    
                    <td><input type="text" value="<%=rs.getString(9)%>" name="religion"></td>
                    
                    <td><input type="text" value="<%=rs.getString(10)%>" name="gender"></td>
                    
                    <td><input type="text" value="<%=rs.getString(11)%>" name="diet"></td>
                    
                    <td><input type="text" value="<%=rs.getString(12)%>" name="status"></td> --%>
                    
                          
                    
         <%
        }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        %>
        </table>
        <button type="submit">Update</button>
                    </form>
               
            </div>
    </body>
</html>
