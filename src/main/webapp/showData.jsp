<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}

button[type=submit] {
  width: 30%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 20px 500px;
  border: none;
  border-radius: 50px;
  cursor: pointer;
  
}

button[type=submit]:hover {
  background-color: #45a049;
  
}
</style>
</head>
<body>

<ul>
  <li><a href="Welcome_admin.jsp"><b>Home</b></a></li>
  
  <li><a class="active" href="showData.jsp"><b>Show Data</b></a></li>
  <li><a href="insertQue.jsp"><b>Insert Question</b></a></li>
  <li style="float:right"><a href="logout.jsp"><b>Logout</b></a></li>
</ul>

<h1  style="text-align:center">Registered Candidates</h1>
<br><br>
<form action="allData">
<button type="submit">Show Data</button>
</form>
</body>
</html>
