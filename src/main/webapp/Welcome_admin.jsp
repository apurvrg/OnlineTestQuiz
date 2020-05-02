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
</style>
</head>
<body>

<ul>
  <li><a class="active" href="Welcome_admin.jsp"><b>Home</b></a></li>
  
  <li><a href="showData.jsp"><b>Show Data</b></a></li>
  <li><a href="insertQue.jsp"><b>Insert Question</b></a></li>
  <li style="float:right"><a href="logout.jsp"><b>Logout</b></a></li>
</ul>

<h1  style="text-align:center">Welcome: Admin</h1>
</body>
</html>
