<%--
  Created by IntelliJ IDEA.
  User: school
  Date: 1/16/2020
  Time: 3:45 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>${productId}</title>

    <script src="${pageContext.request.contextPath}/static/javascript/productDetails.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

</head>
<%@include file="navbar.jsp" %>

<body id="body">


<script>
    displayOneProduct();
</script>

<%@include file="footer.jsp"%>
</body>
</html>
