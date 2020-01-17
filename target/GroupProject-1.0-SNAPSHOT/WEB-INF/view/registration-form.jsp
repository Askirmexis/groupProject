<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <style>
            .error{
                color:red;
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
        <br>
        <br>
        <div class="text-center">
            <h1 style="color: darkslategray; font-size: 60px;"><strong>Create an Account</strong></h1>
        </div>
        <br><br>
        <hr>
        <h6 style="text-align:center">Personal Information</h6>
        <hr>
        <br><br>
        <form:form 
            action="${pageContext.request.contextPath}/register/processRegistration" 
            method="POST"
            modelAttribute="user">
        <div class="container-fluid col-8 offset-md-2 form-group">
            <p>Welcome to SWOLEPATROL personal area. Help us to know you better. This will allow us tailoring offers to your
                needs. In your personal area you may check your orders and access exclusive contents.</p>
            <br>
            <div class="row">
                <div class="col-sm form-group">
                    <label for="Fname">First Name *</label>
                    <form:input path="fname" type="text" class="form-control" id="Fname" placeholder="Enter first name"/>
                    <form:errors path="fname" cssClass="error"/>
                    <br>
                    <label for="exampleInputEmail1">Email address *</label>
                    <form:input path="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                           placeholder="Enter e-mail"/>
                    <form:errors path="email" cssClass="error"/>
                    <br>
                    <label for="postcode">Postcode *</label>
                    <form:input path="zip" type="text" class="form-control" id="postcode" placeholder="Enter postcode"/>
                    <form:errors path="zip" cssClass="error"/>
                </div>
                <div class="col-sm form-group">
                    <label for="Lname">Last Name *</label>
                    <form:input path="lname" type="text" class="form-control" id="Lname" placeholder="Enter last name"/>
                    <br>
                    <!--
                    label for="phone" class="col-form-label">Telephone</label>
                    form:input path="phone" class="form-control" type="tel" id="phone" placeholder="Enter phone number"/>
                    -->
                    <br>
                    <!--
                    label for="City">City *</label>
                    form:input path="city" type="text" class="form-control" id="City" placeholder="Enter city"/>
                    -->
                </div>

            </div>
            <div class="form-group">
                <label for="address">Street Address *</label>
                <form:input path="street" type="text" class="form-control" id="address" placeholder="Enter Street Address"/>
            </div>
            <div class="row">
                <div class="col-sm form-group">
                    <label for="snumber">Street Number *</label>
                    <form:input path="streetNumber" type="number" class="form-control" id="snumber" placeholder="Enter street number"/>
                    <br>
                    <label for="password">Password *</label>
                    <form:input path="password" type="password" class="form-control" id="password" placeholder="Enter password"/>
                </div>
                <div class="col-sm form-group">
                    <label for="country">Country *</label>
                    <form:input path="country" type="text" class="form-control" id="country" placeholder="Enter country"/>
                    <br>
                    <label for="username">Username</label>
                    <form:input path="username" type="text" class="form-control" id="username" placeholder="Enter username"/>
                    <form:errors path="username" cssClass="error"/>
                    <!-- <label for="confirmpassword">Confirm Password *</label>
                    <input type="password" class="form-control" id="confirmpassword" placeholder="Confirm password"> -->
                </div>
            </div>
            <br>
            <br>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                <label class="form-check-label" for="invalidCheck">
                    I Agree to the <a href="#">SWOLE PATROL Terms of Use</a> and <a href="#">Privacy Policy</a>
                </label>
                <div class="invalid-feedback">
                    You must agree before submitting.
                </div>
            </div>
            <br><br>

            <div class="text-center">
                <button type="submit" class="btn btn-primary" value="Register">Submit</button>
            </div>
        </div>
        </form:form>
        <br>
        <hr>
        <div class="col-sm-10 offset-md-1" style="font-stretch: expanded">
            <h3 style="color: darkslategray"><strong>WE'RE ALWAYS HAPPY TO HEAR FROM YOU</strong></h3>
        </div>





        <h1>Registration Form</h1>
        <form:form 
            action="${pageContext.request.contextPath}/admin/register/processRegistration" 
            method="POST"
            modelAttribute="user">
            <p>
                <form:input path="username" placeholder="username"/>
                <form:errors path="username" cssClass="error"/>
            </p>
            <p>
                <form:input path="password" placeholder="password"/>
                <form:errors path="password" cssClass="error"/>
            </p>
            <p>
                <form:input path="fname" placeholder="fname"/>
                <form:errors path="fname" cssClass="error"/>
            </p>
            <p>
                <form:input path="lname" placeholder="lname"/>
                <form:errors path="lname" cssClass="error"/>
            </p>
            <p>
                <form:input path="email" placeholder="email"/>
                <form:errors path="email" cssClass="error"/>
            </p>
            <p>
                <form:select path="roles" items="${roloi}" multiple="true" itemValue="rid" itemLabel="rname"/>
                <form:errors path="roles" cssClass="error"/>
            </p>
            <input type="submit" value="Register">
        </form:form>
    </body>
</html>












