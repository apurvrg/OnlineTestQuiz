<%-- 
    Document   : CTestStart
    Created on : 20-Apr-2020, 10:59:08 am
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>C Test Start</title>
     
        
    </head>
    <style>
        
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
      Start test now
      
     <%--  <table border="4">
          <tr>
            <th>Question</th>
            <th>Opt A</th>
            <th>Opt B</th>
            <th>Opt C</th>
            <th>Opt D</th>
            
        </tr>
      
      <c:forEach items="${cque}" var="cque">
          <tr>
              <td>${cque.question}</td>
              <td>${cque.optA}</td>
              <td>${cque.optB}</td>
              <td>${cque.optC}</td>
              <td>${cque.optD}</td>
              
          </tr>
      </c:forEach>
      </table>  --%>
    <div>
    <form>
         
		        	 <h4>Question ${cque.id} of 19</h4>
		             <h2>Question :  ${cque.question}</h2><br>
        <h3><input type="radio" name="optA"></input> ${cque.optA}</h3><br>
        	 <h3><input type="radio" name="otpB"></input> ${cque.optB}</h3><br>
		  	 <h3><input type="radio" name="optC"></input>${cque.optC}</h3><br>
		     <h3><input type="radio" name="optD"></input>${cque.optD}</h3><br> 
								
	 </form>
        <form action="next">
            <button type="submit">Next</button>
        </form>
        <form action="previous">
            <button type="submit">Previous</button>
        </form>
         <form action="cTestSubmit">
            <button type="submit">Submit</button>
        </form>
    </div>
    </body>
</html>
