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
    <title>bikes</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous">
    </script>
    <script src="${pageContext.request.contextPath}/static/javascript/productDetails.js"></script>
    <script src="${pageContext.request.contextPath}/static/javascript/filters.js"></script>
    <script src="${pageContext.request.contextPath}/static/javascript/navbar.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>

<body>

<jsp:include page="navbar.jsp"/>
<div class="custom-control custom-radio" id="brands">
    <div>
        <input type="radio" class="custom-control-input" id="all" name="BrandRadios"
               value="all" checked>
        <label class="custom-control-label" for="all">all</label>
    </div>


</div>
<label for="price" id="pricevalue">Select Price (0-1000)</label>
<input value="3000" id="price" type="range" min="200" max="3000"/>

<div id="product">
    <ul>

    </ul>

</div>
<script>

    displayProducts();
    $("#price").on("input", (e) => {
        document.getElementById("pricevalue").innerHTML = 'Select Price (' + e.target.value + ')';
    });
    $("#price").on("change", (e) => {
        $("ul").empty();
        displayProducts();
    });
</script>

<%@include file="footer.jsp"%>
</body>
</html>
