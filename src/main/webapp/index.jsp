 <!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
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

h3{
text-align: center;
font-family: Arial, Helvetica, sans-serif;
font-size: 20px;
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
div {
  border-radius: 50px;
  background-color: #f2f2f2;
  padding: 50px 80px 80px 80px;
  width: 50%;
	margin: 100px 250px 150px 300px;
}

button[type=submit]:hover {
  background-color: #45a049;
  
}



</style>
<body>
<div class="index" style="text-align:center">
  
  
  
  
  <h1>Welcome to online examination</h1>
<br>
<h2>Please select your login category</h2>
  <br>
   <form class="index">
         <button type="submit" formaction="student_login.jsp"><h3>Student</h3></button>
          <button type="submit" formaction="adminlogin.jsp"><h3>Admin</h3></button>
      </form>
   

</div>

</body>
</html>
 