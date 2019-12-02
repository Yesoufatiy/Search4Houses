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
<script>




</script>
</head>
<body>
	<fieldset>
		<legend>Welcome</legend>
		<p>This is Search4Housing, where we match you to our best listing
			to find you a place to stay.</p>
	</fieldset>
	
				<!-- links to other parts of website. These are not final until we can get all the parts together -->
<h1 align  = "center" style = "color: #4B4B4B">Search4House</h1>
 <div id = "menuTop" align  = "center">
	<a href  = "WelcomePage.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Home</strong></a> |
	<a href  = "Profile.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Profile</strong></a> |
	<a href = "FavoriteList.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Favorites List</strong></a> | 
	<a href = "Search.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Search</strong></a>

	</div><hr>
	
	
	<fieldset>
		<legend>Sign In</legend>
		<label for="username">Username:</label> <input type='text'
			name='username' size='20' required> <br> <label
			for="password">Password:</label> <input type='text' name='password'
			size='20' required> <br> <input type='submit'
			name='signIn' value='Sign In'>
	</fieldset>
	<fieldset>
		<legend>Sign Up</legend>
		<label for="fullName">Full Name:</label> <input type='text'
			name='fullName' size='20' required> <br> <label
			for="email">Email:</label> <input type='text' name='email' size='20'
			required> <br> <label for="phoneNumber">Phone
			Number:</label> <input type='number' min="10000000000" name='phoneNumber'
			size='20'> <br> <label for="age">Age:</label> <input
			type='number' min="0" name='age' size='20'> <br> <label
			for="username">Username:</label> <input type='text' min="0"
			name='username' size='20' required> <br> <label
			for="password">Password:</label> <input type='text' name='password'
			size='20' required> <br> <input type='submit'
			name='signUp' value='Sign Up'>
	</fieldset>
	<fieldset>
		<legend>Just Browsing</legend>
		<label for="place">Country:</label> <input type='text' name='place'
			size='20' required> <br> <input type='submit'
			name='browse' value='Browse'>
	</fieldset>
</body>
</html>