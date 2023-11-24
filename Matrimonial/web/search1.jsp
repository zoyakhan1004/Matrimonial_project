<%-- 
    Document   : search1
    Created on : 3 Aug, 2023, 11:42:50 AM
    Author     : ADM
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <style>
            Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: cyan;  
}  
            .container {   
        padding-left: 165px;
    padding-top: 24px;
    padding-right: 130px;
    padding-bottom: 24px;  
        background-color: #e6adad;  
    }
    table{
        border: 3px solid #f1f1f1;
    }
        </style>
    </head>
    <body>
        <%
            String age=request.getParameter("age");
            String work   =request.getParameter("work");
            String religion   =request.getParameter("religion");
            String gender     =request.getParameter("gender");
            String diet    =request.getParameter("diet");
            String status   =request.getParameter("status");
        try
        {
            ResultSet rs= null;
            Statement st= DBConnector.getStatement();
            String query=  "SELECT * from users where age='"+age+"'AND work='"+work+"'AND religion='"+religion+"'AND gender='"+gender+"'AND diet='"+diet+"'AND status='"+status+"'";
            System.out.println(query);
            
            rs= st.executeQuery(query);
            %>
            <br>
            <br>
            <br>
            <br>
            <div class="container">
            <table width="1000">
                <tr>
                    <td><b>Photo:</b></td>
                    <td><b>Name:</b></td>
                    <td><b>Date of Birth:</b></td>
                    <td><b>Qualification:</b></td>
                    <td><b>Work:</b></td>
                    <td><b>Income:</b></td>
                    <td><b>Religion:</b></td>
                    <td><b>Diet:</b></td>
                    <td><b>Marital Status:</b></td>
                    <td><b>Age:</b></td>
                </tr>
 
        <%
     
     while(rs.next())
     {
         %>
         <form action="search3.jsp" method="post">
         <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(11)%></td>
                    <td><%=rs.getString(12)%></td>
                    <td><%=rs.getString(13)%></td>
                    <input type="hidden" value="<%=rs.getString(14)%>" name="nname">
                    <td><button type="submit">Expand</button></td>
                    
         </tr>
         </form>
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
