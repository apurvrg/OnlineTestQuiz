<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
		<form action="admin_login">
		
			<h1><i>ADMIN LOGIN</i></h1>
			<br><br>
			USERNAME: <input type="text" name="admin_user"/>
			<br><br>
			PASSWORD: <input type="text" name="admin_pass"/>
			<br><br>
			<button type="submit">SUBMIT</button>
			<button type="reset">RESET</button>
			
		</form>
	</center>

</body>
</html> --%>

<!DOCTYPE html>
<html>
<head>

</head>
<style>

h2{
text-align: center;
font-family: Arial, Helvetica, sans-serif;

}



input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
 border-radius: 50px;
  box-sizing: border-box;
}

button[type=submit] {
  width: 40%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
 border-radius: 50px;
  cursor: pointer;
 
}

button[type=reset] {
  width: 40%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
 border-radius: 50px;
  cursor: pointer;
}

button[type=submit]:hover {
  background-color: #45a049;
}

button[type=reset]:hover {
  background-color: #45a049;
}

.admin {
  border-radius: 50px;
  background-color: #f2f2f2;
   padding: 20px 120px 50px 120px;
  margin: 150px 450px 50px 450px;
}

label{
font-size: 20px;
font-weight: bold;
}

</style>
<body>

<div class="admin">

  <form action="admin_login">
    <h2>ADMIN LOGIN</h2>
     <label for="username">Username</label>
    <input type="text" id="username" name="admin_user" placeholder="Username.." required>
    
     <label for="password">Password</label>
    <input type="text" id="password" name="admin_pass" placeholder="Password.."required>
    
    
  <div style="text-align:center">  
    <button type="submit"><h3>Submit</h3></button>
    <button type="reset"><h3>Reset</h3></button>
    </div>
   
  </form>
</div>

</body>
</html>
