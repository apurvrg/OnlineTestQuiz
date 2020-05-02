<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Test Start</title>
</head>
 <style>
        
        div {
  border-radius: 50px;
  background-color: #f2f2f2;
  padding: 20px 80px 50px 80px;
  margin: 20px 450px 50px 450px;
}

label{
font-size: 20px;
font-weight: bold;
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
 <div>
    <form action="javaSave">
         <h4>Question ${jv.id} of 19</h4>
		 <h2>Question :  ${jv.question}</h2><br>
		 <h3><input type="radio" name="javaOption" value="${jv.optA}">${jv.optA}</h3>
		 <h3><input type="radio" name="javaOption" value="${jv.optB}">${jv.optB}</h3>
		 <h3><input type="radio" name="javaOption" value="${jv.optC}">${jv.optC}</h3>
		 <h3><input type="radio" name="javaOption" value="${jv.optD}">${jv.optD}</h3>
		 
		 
		<button type="submit">Save</button>
    </form>
    	<form action="javaNext">
            <button type="submit">Next</button>
        </form>
        <form action="javaPrevious">
            <button type="submit">Previous</button>
        </form>
        
        <form action="javaTestSubmit">
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>