<%-- 
    Document   : auth
    Created on : Jan 21, 2020, 3:19:45 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        HELLO
        <form:form action="authorize_payment" method="post" modelAttribute="orderDetail">
            <input type="submit" value="PaypalCheckout" />
        </form:form>
    </body>
</html>
