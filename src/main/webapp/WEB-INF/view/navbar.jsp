<%-- 
    Document   : navabar
    Created on : Jan 19, 2020, 3:45:19 PM
    Author     : Gioti
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">

        <script src="${pageContext.request.contextPath}/static/javascript/displayProduct.js"></script>
        <script src="${pageContext.request.contextPath}/static/javascript/cartLocal.js"></script>
        <style>
            * {
                box-sizing: border-box;
            }

            .dropdown:hover>.dropdown-menu {
                display: block;
                top: 100%;
            }

            .dropdown>.dropdown-toggle:active {
                /*Without this, clicking will make it sticky*/
                pointer-events: none;
            }

            .navbar {
                background-color: rgba(15, 3, 3, 0.952);

            }

            .navbar-toggler {
                background-color: rgb(228, 228, 228);
                
            }

            .navbar-expand-lg {
                padding: 0;
                margin: 0;
            }

            .navbar-collapse {
                background-color: rgb(24, 23, 23);
            }

            main {
                min-height: 100%;
            }
            ul{
                padding: 0px;
            }
            li {
                margin-left:0px;
                margin-bottom: 5px;
                list-style-type: none;
            }

            .imgthumb {
                width: 65px;
                height: 65px; 
                /*            float: left;*/
                margin-right: 5px;
            }

            #insideCart{
                width: 300px;
            }
        </style>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light d-flex" style="height: 100px;">
                <a class="navbar-brand" href="${pageContext.request.contextPath}">
                   <img src="https://i.ebayimg.com/images/g/OvYAAOSw0NVbqt8H/s-l300.jpg" alt="..."
                         class="img-thumbnail px-0 py-0" style="max-width:88px;">
                </a>
                <button class="navbar-toggler text-white" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav" style="padding-right: 100px;">
                        <li class="col nav-item active">
                            <a class="nav-link text-white" href="${pageContext.request.contextPath}">Home <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown px-2">
                            <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown1" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Cardio
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/products/treadmills">Treadmills</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/products/elliptical">Ellipticals</a>

                                <a class="dropdown-item" href="${pageContext.request.contextPath}/products/bikes">Bikes</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown px-2">
                            <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown2" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Strength
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/products/rowers">Rowers</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/products/benches">Benches</a>


                                <a class="dropdown-item" href="${pageContext.request.contextPath}/products/kettlebells">Kettlebells</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/products/dumbbells">Dumbbells</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown px-2">
                            <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown3" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Functionality
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/products/multigyms">Multigyms</a>
                                
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/products/multigyms">Cable Stations</a>

                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto" style="padding-right:20px">
                        <li class="nav-item dropdown px-2">
                            <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown5" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-user"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <security:authorize access="!isAuthenticated()">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/loginPage">Login</a>
                                </security:authorize>
                                <security:authorize access="hasRole('ADMIN')">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/admin/contactMessages">Messages</a>
                                    <a class="dropdown-item" href="#">Register Product</a>
                                </security:authorize>

                                <security:authorize access="isAuthenticated()">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/user/update">Edit profile</a>
                                    <form:form action="${pageContext.request.contextPath}/logout" method="POST">
                                        <input class="text-center" style="background-color:white;border:none;padding-left:26px" type="submit" value="Logout">
                                    </form:form>
                                </security:authorize>
                            </div>
                        </li>
                        <a class="text-left" href="${pageContext.request.contextPath}/contact" style="padding-top:10px;color: white;">Contact</a>
                        <li class="nav-item dropdown px-2">
                            <a href="#" id="cart" class="nav-link dropdown-toggle text-white"><i
                                    class="fa fa-shopping-cart"></i> Cart: <span id="itemsAmount2"
                                    class="badge">0</span></a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <div class="shopping-cart-header" style="padding-left: 20px;">
                                    <i class="fa fa-shopping-cart cart-icon"></i><span id="itemsAmount"
                                                                                       class="badge">0</span>
                                    <div class="shopping-cart-total">
                                        <span class="lighter-text">Total:</span>
                                        <span class="text-dark">$<span id="total">0</span></span>
                                    </div>
                                </div>
                                <div id="insideCart" class="dropdown-divider"></div>
                                <ul id="cart-items" class="shopping-cart-items">

                                </ul>
                                <div class="dropdown-divider text-center" style="margin-left: 20px;"></div>
                                <button id="cartCheckout" class="btn btn-primary text-center"
                                        style="margin-left: 20px;">Checkout</button>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <script>
            $("#cartCheckout").on("click", function (ev) {
                location.href = "${pageContext.request.contextPath}/checkout";
            });
            //get the cart items from localStorage
            CART.init();
            //load the cart items
            showCart();
        </script>
    </body>
</html>
