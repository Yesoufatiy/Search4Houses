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


function checkValues(){
	
	
	if(document.zipSearch.zipcode.value=="")
    {
    } else {
    	addToDB();
    	alert("Successfully created Listing!");

    }
}

function addToDB(){
	
}

function disableAddContact(){

	if (document.getElementById("userContactInfo").checked = true){
		
		document.getElementById("contactName").disabled = true;
		document.getElementById("contactName").value = "";
		document.getElementById("email").disabled = true;
		document.getElementById("email").value = "";
		document.getElementById("phoneNum").disabled = true;
		document.getElementById("phoneNum").value = "";


	} 
	}
function enableAddContact(){
if (document.getElementById("aDiffContact").checked = true){
		
		document.getElementById("contactName").disabled = false;
		document.getElementById("email").disabled = false;
		document.getElementById("phoneNum").disabled = false;

	}
}


</script>


<style>
#buttonColor {
background-color: #ff6363;
  color: white;
    width: 300px;
    height: 40px;
    font-size:16px;
}






</style>

</head>
<body>



 <%
 String db = "search4houses";
 String user;
 String addressID;
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();
     ResultSet rs = stmt.executeQuery("SELECT * FROM Addresses"); 
     
     stmt.close();
     con.close();
     } catch(SQLException e) {
     out.println("SQLException caught: " + e.getMessage()); 
 }
 %>




<jsp:include page="navBar.jsp" />

	
	
		<a class="addListSubTitle">
	
	
	
	DONT FORGET TO ADD LISTING ID TO END OF THIS (if possible)
	
	
	
	 <form name = "newListing" action="Listing.jsp?listing=" style="margin-left:5%; margin-right:5%" method="POST" onSubmit="return checkValues()" autocomplete="on">
	<div style="padding-right:20%; padding-left:20%;"><fieldset style="padding:15px;">
	
	<legend style ="font-size:24px;color: #ff6363; padding-top: 10px;">Contact Info</legend>
	  <input type="radio" name="contactInfo" value="userContact" id="userContactInfo" onclick="if(this.checked){disableAddContact()}" > Use mine<br>
	  <input type="radio" name="contactInfo" value="diffContact" id="aDiffContact" onclick="if(this.checked){enableAddContact()}">Another Contact<br>
	  <br>Contact Name: <br>
        <input type="text" name="contactName" id="contactName" size=50 required disabled/> <small>Format: FirstName LastName</small><br>
      Email Address: <br>
        <input type="email" name="email" id="email" size=60 required disabled/> <small>Format: 123@abc.com</small><br>  
        Phone Number: <br>
        <input type="tel" name="phoneNum" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" id="phoneNum" size=30 required disabled/><small>Format: 123-456-7890</small> <br>
        
	  
	
	
	</fieldset></div><hr class="dashed">
	
	
	<div class="col-3"> 		<a class="addListTitle">Room type</a> <br>
	<small>Select the type of room</small><br>
    <select name = "roomType" size = 5 style="font-size:16px;"required>
    <option value = "apartment">Apartment</option>
        <option value = "duplex">Duplex</option>
        <option value = "sharedRoom">Shared Room</option>
        <option value = "singleRoom">Single Room</option>
        <option value = "studio">Studio</option>
    </select> <br><br><hr><br>
    <a class="addListTitle">
    	Price </a><br>
    	<small>Set pricing per month</small><br>
        <input type="text" name="price" size="20" required/> <br><br>
       <a class="addListTitle"> Number of Bedrooms </a><br>
      <small> Set number of bedrooms</small><br>
        <input type="text" name="bedroomNum"  size="20" required/> <br><br>
       <a class="addListTitle"> Number of Bathrooms</a> <br>
       <small>Set number of bathrooms</small> <br>
        <input type="text" name="bathroomNum"  size="20" required/> <br><br>
       <a class="addListTitle"> Lease length</a> <br>
      <small> Set lease length for total months</small><br>
        <input type="text" name="zipcode"  size="20" required/>
         </div>
         
         
         
        <a class="col-5"> 
         <fieldset>
       <legend style ="font-size:24px;color: #ff6363;"> Address </legend><br>
       
        Street Address: 
        <input type="text" name="streetAddress" size=23 required/> 
        Apartment #:
                <input type="text" name="aptNum" size=5 required/> 
       <br><br><br> City:
                <input type="text" name="city" size=20 required/>
		State:
		<%//code below borrowed from https://www.freeformatter.com/usa-state-list-html-select.html
			//a website that provides free web resources%>
		<select name="state" style="font-size:16px; width:90px;" required>
	<option value="AL">Alabama</option>
	<option value="AK">Alaska</option>
	<option value="AZ">Arizona</option>
	<option value="AR">Arkansas</option>
	<option value="CA">California</option>
	<option value="CO">Colorado</option>
	<option value="CT">Connecticut</option>
	<option value="DE">Delaware</option>
	<option value="DC">District Of Columbia</option>
	<option value="FL">Florida</option>
	<option value="GA">Georgia</option>
	<option value="HI">Hawaii</option>
	<option value="ID">Idaho</option>
	<option value="IL">Illinois</option>
	<option value="IN">Indiana</option>
	<option value="IA">Iowa</option>
	<option value="KS">Kansas</option>
	<option value="KY">Kentucky</option>
	<option value="LA">Louisiana</option>
	<option value="ME">Maine</option>
	<option value="MD">Maryland</option>
	<option value="MA">Massachusetts</option>
	<option value="MI">Michigan</option>
	<option value="MN">Minnesota</option>
	<option value="MS">Mississippi</option>
	<option value="MO">Missouri</option>
	<option value="MT">Montana</option>
	<option value="NE">Nebraska</option>
	<option value="NV">Nevada</option>
	<option value="NH">New Hampshire</option>
	<option value="NJ">New Jersey</option>
	<option value="NM">New Mexico</option>
	<option value="NY">New York</option>
	<option value="NC">North Carolina</option>
	<option value="ND">North Dakota</option>
	<option value="OH">Ohio</option>
	<option value="OK">Oklahoma</option>
	<option value="OR">Oregon</option>
	<option value="PA">Pennsylvania</option>
	<option value="RI">Rhode Island</option>
	<option value="SC">South Carolina</option>
	<option value="SD">South Dakota</option>
	<option value="TN">Tennessee</option>
	<option value="TX">Texas</option>
	<option value="UT">Utah</option>
	<option value="VT">Vermont</option>
	<option value="VA">Virginia</option>
	<option value="WA">Washington</option>
	<option value="WV">West Virginia</option>
	<option value="WI">Wisconsin</option>
	<option value="WY">Wyoming</option>
</select>	
	Zip Code: 
	        <input type="text" name="zipcode" maxlength = "5" size=5 style="margin-bottom:40px;" required/> <br>
	        </fieldset></a>
	        
	    <a class="col-3"> 
	    <a class="addListTitle">Photo(s): </a><br>
	<small>*jpeg format only, up to 5 photos per listing* </small><br>
	<input type="file" name="image1" accept="image/jpeg" required /> <br>
	<input type="file" name="image2" accept="image/jpeg"  /> <br>
	<input type="file" name="image3" accept="image/jpeg"  /> <br>
	<input type="file" name="image4" accept="image/jpeg"  /> <br>
	<input type="file" name="image5" accept="image/jpeg"  /> <br><br><br>
	</a>

	
	
        
        
        
        <a class="col-8">
        
       <textarea name="information" rows="15" cols="100" style="font-size:16px;">Enter additional description.</textarea></a><br>
    
    
    
    
    
    
    
    
    <a class="col-9">
    <input type="submit" id="buttonColor" style="float: right;" value="Submit Listing" onSubmit="return checkValues()"/> 
    <button type="button" id="buttonColor" name="cancelButton" style="float: right; margin-right:25px" onclick="javascript:history.back()">Cancel New Listing</button>
    </a>
</form></a>
	
	
	

</body>
</html>