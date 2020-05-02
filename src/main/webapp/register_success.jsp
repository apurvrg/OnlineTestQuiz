<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successful</title>
</head>
<style>

h1{
text-align: center;
font-family: Arial, Helvetica, sans-serif;
}

h2{
text-align: center;
font-family: Arial, Helvetica, sans-serif;

}

i{
color: green;
}

button[type=submit] {
  width: 30%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 20px 0;
  border: none;
  border-radius: 50px;
  cursor: pointer;
  
}

button[type=submit]:hover {
  background-color: #45a049;
  
}

.success {
  border-radius: 50px;
  background-color: #f2f2f2;
   padding: 20px 120px 50px 120px;
  margin: 150px 450px 50px 450px;
}

</style>
<body>
<div class="success"  style="text-align:center">

	<h1>REGISTERED SUCCESSFULLY</h1>
	
	<h2>Welcome </h2><br>
	<h1>
	<i>${param.firstname}
	${param.lastname}</i>
	</h1>
	<br>
	
	<form>
	<button type="submit" formaction="student_login.jsp"><h3>Login Here</h3></button>
	</form>
</div>
</body>
</html>