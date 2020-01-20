<%--
  Created by IntelliJ IDEA.
  User: school
  Date: 1/7/2020
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>treadmills</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous">
    </script>
    <script src="${pageContext.request.contextPath}/static/javascript/displayProduct.js"></script>
    <script src="${pageContext.request.contextPath}/static/javascript/filters.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>

<body>

<jsp:include page="../navbar.jsp"/>

<div id="product">;
    <ul>
    </ul>
</div>
<script>
    displayProducts();

</script>

<%@include file="../footer.jsp" %>
</body>
</html>
