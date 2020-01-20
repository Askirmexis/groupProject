<%-- 
    Document   : admin
    Created on : Dec 16, 2019, 1:58:09 PM
    Author     : tasos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<h1>Welcome admin!</h1>
<a href="${pageContext.request.contextPath}/admin/register/showForm">Registration Form</a>
</body>
<%@include file="footer.jsp" %>
</html>
