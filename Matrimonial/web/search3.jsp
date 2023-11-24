<%-- 
    Document   : search3
    Created on : 3 Aug, 2023, 12:05:01 PM
    Author     : ADM
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<html>
    <%
            String username = (String)session.getAttribute("username");
            if(username==null){
                response.sendRedirect("login.html");
            }
          %>
          <%
          String nname=request.getParameter("nname");%>
          <%
          try
        {
            ResultSet rs= null;
            Statement st= DBConnector.getStatement();
            String query=  "SELECT * from users where username='"+nname+"'";
            System.out.println(query);
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
             <tr>
             <th>Name:</th>
             <td><%=rs.getString(1)%></td>
             </tr>
             <tr>
         <th>Date Of Birth:</th>
         <td><%=rs.getString(2)%></td>
          </tr>
           <tr>
           <th>Phone:</th>
            <td><%=rs.getString(3)%></td>
               </tr>
               <tr>
               <th>Email:</th>
               <td><%=rs.getString(4)%></td>
               </tr>
               <tr>
<th>Aadhar:</th>
<td><%=rs.getString(5)%></td>
</tr>
<tr>
<th>Qualification:</th>
<td><%=rs.getString(6)%></td>
</tr>
<tr>
<th>Work:</th>
 <td><%=rs.getString(7)%></td>
</tr>
<tr>
<th>Income:</th>
<td><%=rs.getString(8)%></td>
</tr>
<tr>
<th>Religion:</th>
<td><%=rs.getString(9)%></td>
</tr>
<tr>
<th>Gender:</th>
<td><%=rs.getString(10)%></td>
</tr>
<tr>
<th>Diet:</th>
<td><%=rs.getString(11)%></td>
</tr>
<tr>
<th>Status:</th>
<td><%=rs.getString(12)%></td>
</tr>
<tr>
<th>Age:</th>
<td><%=rs.getString(13)%></td>
</tr>
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
            </div>
    </body>
</html>
