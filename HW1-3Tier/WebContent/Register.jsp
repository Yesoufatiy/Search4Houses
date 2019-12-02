<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<script src="basics.js"> </script>

  <link rel="stylesheet" href="style.css">
<head>
<meta charset="UTF-8">
<title>search4House</title>


</head>
<body>
<jsp:include page="navBar.jsp" />

 <%
 String db = "search4houses";
 String user;
 String addressID;
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();
     ResultSet rs = stmt.executeQuery("SELECT * FROM Accounts"); 
     
     
     
     
     %> 
     
      <form name = "newListing" action="Listing.jsp?listing=" style="margin-left:5%; margin-right:5%" method="POST" onSubmit="return checkValues()" autocomplete="on">
	<div class="form-group" style="padding-right:20%; padding-left:20%;"><fieldset style="padding:15px;">
	
	<legend style ="font-size:24px;color: #ff6363; padding-top: 10px;">New User Registration</legend>
	<b> Username:</b> <br>
        <input type="text" class="form-control" name="username" id="username" size=50 required placeholder="Username"/> <br>
      <b> Password:</b> <br>
        <input type="password" class="form-control" name="password" id="password" size=30 required placeholder="Password"/> <br>
        <b> Email Address:</b> <br>
        <input type="email" class="form-control" name="email" id="email" size=60 required placeholder="123@abc.com"/> <br>  
       <b> Phone Number:</b> <br>
        <input type="tel" class="form-control" name="phoneNum" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" id="phoneNum" size=30 required placeholder="123-456-7890"/> <br>
       
	  </fieldset></div></form>
     
     
     
     
     
     
     
     <%
     
     
     stmt.close();
     con.close();
     } catch(SQLException e) {
     out.println("SQLException caught: " + e.getMessage()); 
 }
 %>









</body>
</html>