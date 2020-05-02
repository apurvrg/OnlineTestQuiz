<!DOCTYPE html>
<%@page isELIgnored="false" %>
<html>
<head>
<style>
#subjects {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  font-size: 20px;
  padding: 50px 80px 80px 80px;
  margin: 100px 250px 150px 370px;
}

#subjects td, #subjects th {
  border: 10px solid #ddd;
  padding: 8px;
  text-align: center
}

#subjects tr:nth-child(even){background-color: #f2f2f2;}

#subjects tr:hover {background-color: #ddd;}

#subjects th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}

#subjects button[type=submit]:hover {
  background-color: #45a049;
  
}

#subjects button[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 10px 0px;
  margin: 5px 0;
  border: none;
  border-radius: 50px;
  cursor: pointer;
  font-size: 20px;
  
}

.welcome button{

  background-color: #4CAF50;
  color: white;
padding:0px 30px;
margin:0px 1300px;
border: none;
  border-radius: 50px;
  cursor: pointer;
  font-size: 20px;
}

.welcome h2{
text-align: center;
font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>
<body>
<form>
<div class="welcome">
<h2>Welcome : ${param.username}</h2>
<button type="submit" formaction="logout.jsp">Logout</button>
</div>



<table id="subjects">
  
  <tr>
    <th>Sr. No</th>
    <th>Subject</th>
    <th>Questions</th>
    <th>Time</th>
    <th>Link</th>
  </tr>

<tr>
		<td>1</td>
		<td><b>C</b></td>
		<td>20</td>
		<td>20 Min</td>
		<td><button type="submit" formaction="Ctest.jsp">Start Test</button></td>
		</tr>
		
		<tr>
		<td>2</td>
		<td><b>C++</b></td>
		<td>20</td>
		<td>20 Min</td>
		<td><button type="submit" formaction="Cpptest.jsp">Start Test</button></td>
		</tr>
		
		<tr>
		<td>3</td>
		<td><b>Java</b></td>
		<td>20</td>
		<td>20 Min</td>
		<td><button type="submit" formaction="Javatest.jsp">Start Test</button></td>
		</tr>
		
		<tr>
		<td>4</td>
		
		<td><b>PHP</b></td>
		<td>20</td>
		<td>20 Min</td>
		<td><button type="submit" formaction="Phptest.jsp">Start Test</button></td>
		</tr>
</table>
</form>
</body>
</html>
