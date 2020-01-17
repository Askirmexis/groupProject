<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
                        <input type="text" class="form-control" id="username" aria-describedby="emailHelp"
                            placeholder="Enter username">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your data with anyone
                            else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password *</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter password">
                    </div>
                    <p style="text-align: right">* Required Fields</p>
                    
                    
                    

                

            </div>
        </div>
    </div>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm">
                <hr>
                <div style="text-align: right ; padding: 0 ; margin: 0">
                    <button type="submit" class="btn btn-primary">Create an account</button>
                </div>
            </div>
            <div class="col-sm">
                <hr>
                <div class="container">

                    <a><strong>Forgot your Password?</strong></a>
                    <div style="text-align: right ; padding: 0 ; margin: 0">
                        <button type="submit" class="btn btn-primary" value="Login">Login</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form:form>
    <br>
    <hr>
    <div class="col-sm-10 offset-md-1" style="font-stretch: expanded">
        <h3 style="color: darkslategray"><strong>WE'RE ALWAYS HAPPY TO HEAR FROM YOU</strong></h3>
    </div>
        
        
       <!-- <form:form action="${pageContext.request.contextPath}/authenticate" method="POST">
            <p>
                Username: <input type="text" name="username">
            </p>
            <p>
                Password: <input type="password" name="password">
            </p>
            <input type="submit" value="Login">
        </form:form>
        -->
    </body>
</html>
