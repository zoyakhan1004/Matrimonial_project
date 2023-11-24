<%-- 
    Document   : search
    Created on : 3 Aug, 2023, 11:11:24 AM
    Author     : ADM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: #828a95;  
}
h1{
    font-family: Raleway,sans-serif;
}
.container {  
    padding: 50px;  
  background-color: #181d27;
  color:white;
  border-radius: 15px;
  box-shadow: 0 20px 40px rgba(38, 33, 61, 0.5);
}  
  
input[type=text], input[type=password], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.searchbtn {  
  background-color: #f7f5fb;  
  color: #181d27;  
  padding: 16px 20px;
  display:block;
  margin: auto;  
  border: none;  
  cursor: pointer;  
  width: 30%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  
</head>  
<body>  
<form action="search1.jsp" method="post">  
  <div class="container">
   <center>  <h1>Your story is waiting to happen!</h1> </center>   
  <center>  <h2>Search Your Partner:</h2> </center>  

<label>   
Age :  
</label><br>
<input type="text" name="age" required/>
<br>

<label>   
Work :  
</label><br>  
<input type="radio" value="Private-Sector" name="work">Private-Sector
<input type="radio" value="Public-Sector" name="work">Public-Sector
<input type="radio" value="Defense/Civil Services" name="work">Defense/Civil Services
<input type="radio" value="Business" name="work">Business
<input type="radio" value="Not-Working" name="work">Not-Working

<br>
<br> 
 
Religion:  
</label>
<br> 
<input type="radio" value="Jain" name="religion" checked>Jain
<input type="radio" value="Hindu" name="religion">Hindu
<input type="radio" value="Muslim" name="religion">Muslim
<input type="radio" value="Sikh" name="religion">Sikh
<input type="radio" value="Christian" name="religion">Christian
<br>
<br>
<label>   
Gender :  
</label><br>  
<input type="radio" value="Male" name="gender" checked >Groom
<input type="radio" value="Female" name="gender">Bride
<input type="radio" value="Other" name="gender">Other

<br>
<br>
<label>   
Diet :  
</label><br>  
<input type="radio" value="Veg" name="diet" checked >Vegetarian
<input type="radio" value="Non-Veg" name="diet">Non-Vegetarian
<input type="radio" value="Eggtarian" name="diet">Eggetarian
<br><br>
<label>   
Marital Status :  
</label><br>  
<input type="radio" value="Never-Married" name="status" checked >Never-Married   
<input type="radio" value="Divorced" name="status">Divorced 
<input type="radio" value="Widowed" name="status">Widowed
<br><br>
<button type="submit" class="searchbtn">Search</button>    
</form>  
</body>
</html>
