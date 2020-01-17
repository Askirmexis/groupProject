<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Welcome to Spring MVC!</h1>
        
        
        <a href="${pageContext.request.contextPath}/loginPage">Log in</a>
        <br/>
        <a href="${pageContext.request.contextPath}/products">Products</a>
        <hr>
        <security:authorize access="hasRole('ADMIN')">
            <a href="${pageContext.request.contextPath}/admin">Admin page</a>
        </security:authorize>
        <br/>
        <security:authorize access="hasAnyRole('USER', 'ADMIN')">
            <a href="${pageContext.request.contextPath}/user">User page</a>
        </security:authorize>
            <br/>
        <hr>
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input type="submit" value="Logout">
        </form:form>
    </body>
</html>
