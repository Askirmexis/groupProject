<%-- 
    Document   : checkout
    Created on : Jan 5, 2020, 12:16:27 AM
    Author     : tasos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Check Out</title>
        <style type="text/css">
            table { border: 0; }
            table td { padding: 10px; }
        </style>
    </head>
    <body>
        <div align="center">
            <h1>Check Out</h1>
            <br/>
            <form:form action="authorize_payment" method="post" modelAttribute="orderDetail">
                <table>
                    <tr>
                        <td>Product/Service:</td>
                        <td>
                            <ul>
                                <c:forEach items="${orderDetail.products}" var="product">
                                    <li>
                                        ${product.name}
                                    </li>
                                </c:forEach>
                            </ul>

                        </td>
                    </tr>
                    <tr>
                        <td>Sub Total:</td>
                        <td><form:input  path="subtotal"  /></td>
                    </tr>
                    <tr>
                        <td>Shipping:</td>
                        <td><form:input  path="shipping"  /></td>
                    </tr>    
                    <tr>
                        <td>Tax:</td>
                        <td><form:input  path="tax"  /></td>
                    </tr>    
                    <tr>
                        <td>Total Amount:</td>
                        <td><form:input  path="total"  /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Checkout" />
                        </td>
                    </tr>
                </table>
            </form:form>
        </div>
    </body>
</html>
