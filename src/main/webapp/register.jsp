<!DOCTYPE html>
<html>
<style>

h2{
text-align: center;

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

div {
  border-radius: 50px;
  background-color: #f2f2f2;
  padding: 20px 120px 50px 120px;
  margin: 20px 450px 50px 450px;
}

label{
font-size: 20px;
font-weight: bold;
}
</style>
<body>



<div>
  <form action="register">
  <h2>REGISTER HERE</h2>
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name.." required>

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name.." required>

    <label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="Your email.."required>
    
     <label for="username">Username</label>
    <input type="text" id="username" name="username" placeholder="Username.."required>
    
     <label for="password">Password</label>
    <input type="text" id="password" name="password" placeholder="Password.."required>
    
     <label for="cnf_password">Confirm Password</label>
    <input type="text" id="cnf_password" name="cnf_password" placeholder="Confirm Password.."required>
    

     <button type="submit"><h3>Submit</h3></button>
    <button type="reset"><h3>Reset</h3></button>

  </form>
</div>

</body>
</html>
