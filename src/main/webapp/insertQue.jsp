<!DOCTYPE html>
<html>
<head>
<style>
.navbar ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

.navbar li {
  float: left;
}

.navbar li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.navbar li a:hover:not(.active) {
  background-color: green;
}

.navbar .active {
  background-color: #4CAF50;
}

.subject a:link, a:visited {
  background-color: white;
  color: black;
  border: 2px solid green;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius: 25px;
}

a:hover, a:active {
  background-color: green;
  color: white;
}


</style>
</head>
<body>
<div class="navbar">
<ul>
  <li><a  href="Welcome_admin.jsp"><b>Home</b></a></li>
  <li><a href="showData.jsp"><b>Show Data</b></a></li>
  <li><a class="active" href="insertQue.jsp"><b>Insert Question</b></a></li>
  <li style="float:right"><a href="logout.jsp"><b>Logout</b></a></li>
</ul>
</div>
<div  style="text-align:center">
 <h1>Please select subject</h1>
</div>
<div class="subject" style="text-align:center">

 <h2><b><a href="C.jsp">C</a></b></h2>
 
  <h2><b><a href="Cpp.jsp">Cpp</a></b></h2>
 
  <h2><b><a href="Java.jsp">Java</a></b></h2>
 
  <h2><b><a href="Php.jsp">PHP</a></b></h2>
 


</div>

</body>
</html>
