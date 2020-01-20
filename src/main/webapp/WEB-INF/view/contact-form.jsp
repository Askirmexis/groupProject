<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>
        .error {
            color: red;
        }
    </style>
    <style type="text/css">
        .form-contact {
            width: 540px;
            margin: 50px auto;
        }

        .form-contact form {
            margin-bottom: 15px;
            background: #f7f7f7;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }

        .form-contact h2 {
            margin: 0 0 15px;
        }

        .form-control,
        .btn {
            min-height: 38px;
            border-radius: 2px;
        }

        .btn {

            font-size: 15px;
            font-weight: bold;
            width: 100px;
        }

    </style>
</head>
<body>
<%--<%@include file="navbar.jsp" %>--%>

<div class="col-sm-10 offset-md-1 text-center" style="font-stretch: expanded">
    <h3 style="color: darkslategray"><strong>WE'RE ALWAYS HAPPY TO HEAR FROM YOU</strong></h3>
</div>
<br>
<h1 class="text-center">Contact Form</h1>


<div class="form-contact">

    <form:form
            action="${pageContext.request.contextPath}/contact/messageSubmission"
            method="POST"
            modelAttribute="contact">
        <div class="form-group">
            <form:label path="contactName">Username</form:label>
            <form:input path="contactName" cssClass="form-control"
                        placeholder="Enter your Contact Name please." value=""/>
            <form:errors path="contactName" cssClass="error"/>


        </div>
        <div class="form-group">

            <form:label path="contactEmail">Email:</form:label>
            <form:input path="contactEmail" cssClass="form-control" placeholder="Type your email in here..."/>
            <form:errors path="contactEmail" cssClass="error"/>
        </div>
        <div class="form-group ">
            <form:label path="contactMessage">Contact Message</form:label>
            <form:textarea path="contactMessage" cssClass="form-control" placeholder="Please enter your Message"
                           rows="10"/>
            <form:errors path="contactMessage" cssClass="error"/>
        </div>
        <button id="btn" class="btn btn-primary btn-block" type="submit"><i class="fa fa-paper-plane"
                                                                            aria-hidden="true"></i> Send
        </button>
    </form:form>

</div>

<%@include file="footer.jsp" %>

</body>
</html>












