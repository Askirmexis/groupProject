<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Simple Login Form</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <style type="text/css">
            .login-form {
                width: 340px;
                margin: 50px auto;
            }
            .login-form form {
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .login-form h2 {
                margin: 0 0 15px;
            }
            .form-control, .btn {
                min-height: 38px;
                border-radius: 2px;
            }
            .btn {        
                font-size: 15px;
                font-weight: bold;
            }
        </style>
    </head>
        <jsp:include page="navbar.jsp"/>
        <br>
        <div class="col-sm-10 offset-md-1">
            <h3 style="color: gray;">Login or Create an Account</h3>
            <hr>
        </div>
        <br>
        <form:form action="${pageContext.request.contextPath}/authenticate" method="POST">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-sm-5">
                        <h4 style="color: darkgrey">New Customers</h4>
                        <p>By creating an account with our store, you will be able to move through the checkout process faster,
                            store multiple shipping addresses, view and track your orders in your account and more. If you are a
                            professional operator, creating an account will give you access to our marketing resources to help
                            you promote your facility and services to your customers in a more interesting and engaging way.</p>

                    </div>
                    <div class="col-sm-5">
                        <h4 style="color: darkgrey">Registered Customers</h4>
                        <p>If you have an account with us, please log in.</p>
                        
                        <div class="form-group">
                            <label for="username">Username *</label>
                            <input name="username" type="text" class="form-control" id="username" aria-describedby="emailHelp"
                                   placeholder="Enter username" required="required">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your data with anyone
                                else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password *</label>
                            <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter password" required="required">
                        </div>
                        
                            <c:if test="${param.error !=null}">
                            <div class="alert alert-danger" style="text-align: left">
                                <i>Invalid username/password</i>
                            </div>
                        </c:if>
                        
                        <div style="text-align: right">* Required Fields</div>






                    </div>
                </div>
            </div>

            <div class="container-fluid col-sm-10 offset-md-1">
                <div class="row">
                    <div class="col-sm">
                        <hr>
                        <div style="text-align: right ; padding: 0 ; margin: 0">
                            
                            <button type="submit" class="btn btn-primary" onclick="window.location.href = '${pageContext.request.contextPath}/register/showForm';">Create an account</button>
                                                                                
                        </div>
                    </div>
                    <div class="col-sm">
                        <hr>
                        <div class="container">
                            <div class="row">
                            <div class="col" style="width:50%">
                            <a><strong>Forgot your Password?</strong></a>
                            </div>
                            <div class="col" style="text-align: right ; padding: 0 ; margin: 0 ;width:50%">
                                
                                <button type="submit" class="btn btn-primary" value="Login">Login</button>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form:form>
        <br>
        <br>
        <br>
        <br>
        <br>
        <jsp:include page="footer.jsp"/>
        






        
            <!--
            <c:if test="${param.error !=null}">
                <div class="alert alert-danger">
                    <i>Invalid username/password</i>
                </div>
            </c:if>
            <c:if test="${param.logout !=null}">
                <div class="alert alert-success">
                    <i>Logged out successfully</i>
                </div>
            </c:if>
            -->
        
    
</html>                                		                            