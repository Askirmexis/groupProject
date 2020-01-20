<%--
  Created by IntelliJ IDEA.
  User: school
  Date: 1/19/2020
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Navbar</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">

    <style>
        .dropdown:hover > .dropdown-menu {
            display: block;
            top: 100%;
        }

        .dropdown > .dropdown-toggle:active {
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
            background-color: rgb(32, 30, 30);
        }

    </style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light d-flex" style="height: 100px;">
    <a class="navbar-brand text-white" href="#" style="">
        <!-- <img src="https://res.cloudinary.com/teepublic/image/private/s--KJGk5oZu--/t_Resized%20Artwork/c_fit,g_north_west,h_954,w_954/co_000000,e_outline:48/co_000000,e_outline:inner_fill:48/co_ffffff,e_outline:48/co_ffffff,e_outline:inner_fill:48/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_jpg,h_630,q_90,w_630/v1488364065/production/designs/1278818_1.jpg" alt="" style="max-width:83px;"> -->
        <img src="https://i.ebayimg.com/images/g/OvYAAOSw0NVbqt8H/s-l300.jpg" alt="..." class="img-thumbnail px-0 py-0"
             style="max-width:88px;">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav" style="padding-right: 100px;">
            <li class="col nav-item active">
                <a class="nav-link text-white" href="${pageContext.request.contextPath}/">Home <span class="sr-only">(current)</span></a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item dropdown px-2">
                <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown1" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Cardio
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/products/treadmill">Treadmill</a>
                    <a class="dropdown-item"
                       href="${pageContext.request.contextPath}/products/elliptical">Elliptical</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/products/bike">Bike</a>
                    <%--                    <div class="dropdown-divider"></div>--%>
                    <%--                    <a class="dropdown-item" href="#">Something else here</a>--%>
                </div>
            </li>

            <li class="nav-item dropdown px-2">
                <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown2" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Strength
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Rowers</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/products/bench">Benches</a>
                    <a class="dropdown-item"
                       href="${pageContext.request.contextPath}/products/weight-Bar">Weight-Bars</a>
                    <a class="dropdown-item"
                       href="${pageContext.request.contextPath}/products/kettlebell">Kettlebell</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/products/dumbbell">Dumbbell</a>
                </div>
            </li>
            <li class="nav-item dropdown px-2">
                <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown3" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Functionality
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Multigyms and Cable Stations</a>
                    <a class="dropdown-item" href="#">Exercise Tools</a>
                    <%--                    <div class="dropdown-divider"></div>--%>
                    <%--                    <a class="dropdown-item" href="#">Something else here</a>--%>
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
                    <a class="dropdown-item" href="#">My profile</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <form:form action="${pageContext.request.contextPath}/logout" method="POST">
                        <input type="submit" value="Logout">
                    </form:form>
                    </div>
            </li>
            <a class="text-left" href="${pageContext.request.contextPath}/contact" style="padding-top:10px;color: white;">Contact</a>
            <li class="nav-item dropdown px-2">
                <a href="#" id="cart" class="nav-link dropdown-toggle text-white"><i
                        class="fa fa-shopping-cart"></i> Cart: <span id="itemsAmount2" class="badge">0</span></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <div class="shopping-cart-header" style="padding-left: 20px;">
                        <i class="fa fa-shopping-cart cart-icon"></i><span id="itemsAmount" class="badge">0</span>
                        <div class="shopping-cart-total">
                            <span class="lighter-text">Total:</span>
                            <span class="text-dark">$<span id="total">0</span></span>
                        </div>
                    </div>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Product here</a>
                    <div class="dropdown-divider text-center" style="margin-left: 20px;"></div>
                    <button id="cartCheckout" class="btn btn-primary text-center"
                            style="margin-left: 20px;">Checkout
                    </button>
                </div>
            </li>
        </ul>
    </div>
</nav>

</body>
</html>
