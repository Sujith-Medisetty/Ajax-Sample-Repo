<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.Collection,
                 java.util.ArrayList,
                 java.util.List"                 
                 %>
  <%@ page import="com.AjaxSample.demo.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% Employee emp=(Employee)session.getAttribute("emp"); %>

<h2><%=emp.getFirstname() %></h2>

</body>
</html>