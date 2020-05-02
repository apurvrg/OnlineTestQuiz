<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Success</title>
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

.success {
  border-radius: 50px;
  background-color: #f2f2f2;
   padding: 20px 120px 50px 120px;
  margin: 150px 450px 50px 450px;
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

</style>
<body>
<div class="success"  style="text-align:center">

	<h1>QUESTION INSERTED SUCCESSFULLY</h1>
	
<form>
	<button type="submit" formaction="Java.jsp"><h3>Insert Again</h3></button>
</form>
</div>
</body>
</html>