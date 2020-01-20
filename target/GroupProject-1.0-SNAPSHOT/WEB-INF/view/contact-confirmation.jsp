<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@include file="navbar.jsp"%>
    <body>
        <p>Message succesfully submitted. An employee will contact you ASAP!</p>
        <a href="${pageContext.request.contextPath}/">Home</a>
    </body>

<%@include file="footer.jsp"%>
</html>
