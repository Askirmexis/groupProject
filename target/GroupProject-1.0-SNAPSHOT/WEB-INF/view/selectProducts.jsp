<%-- 
    Document   : formPizza
    Created on : Dec 6, 2019, 5:49:05 PM
    Author     : anastasios
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Products Order</title>
</head>
<body>
<h1>Choose your Products</h1>
<form:form action="cart" method="POST" modelAttribute="orderDetail">

    <p><strong>Choose products:</strong></p>
    <c:forEach items="${productList}" var="product">
        <div>
            <form:checkbox path="products" value="${product.name}"
                           label="${product.name} - $${product.price} - ${product.description}"/>
            <form:errors path="products"/>
        </div>
    </c:forEach>

    <br/>
    <input type="submit" value="Go to cart"/>

</form:form>
</body>
</html>
