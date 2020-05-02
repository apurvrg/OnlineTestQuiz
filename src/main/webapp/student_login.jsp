<!DOCTYPE html>
<html>
<head>

</head>
<style>

h2{
text-align: center;
font-family: Arial, Helvetica, sans-serif;

}

h3{
text-align: center;
font-family: Arial, Helvetica, sans-serif;
font-size: 20px;
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

.login {
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


<div class="login">

  <form action="stu_login">
    <h2>STUDENT LOGIN</h2>
     <label for="username">Username</label>
    <input type="text" id="username" name="username" placeholder="Username.." required>
    
     <label for="password">Password</label>
    <input type="text" id="password" name="password" placeholder="Password.."required>
    
    
 <div  style="text-align:center">
    <button type="submit"><h3>Submit</h3></button>
    <button type="reset"><h3>Reset</h3></button>
    <br><br>
    <h3>New User? <a href="register.jsp">Register Here</a></h3>
 </div>
  </form>
</div>

</body>
</html>
