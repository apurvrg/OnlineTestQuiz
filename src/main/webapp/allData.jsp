<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registered Candidates</title>
</head>
<body>
Registered data here
<br>

    
            <table border="3">
                
                <tr>
                    <th>First Name</th>
                     <th>Last Name</th>
                      <th>Email</th>
                       <th>Username</th>
                        <th>Password</th>
                    
                    
                </tr>
                <c:forEach items="${alldata}" var="alldata">
          <tr>
              <td>${alldata.firstname}</td>
              <td>${alldata.lastname}</td>
              <td>${alldata.email}</td>
              <td>${alldata.username}</td>
              <td>${alldata.password}</td>
              
          </tr>
      </c:forEach>
            </table>
       
    


</body>
</html>