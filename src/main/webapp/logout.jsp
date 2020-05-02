<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
session.invalidate();
response.sendRedirect("index.jsp");
%>

<meta charset="ISO-8859-1">

</head>
<body>

</body>
</html>