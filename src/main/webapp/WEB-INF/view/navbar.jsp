<%--
  Created by IntelliJ IDEA.
  User: school
  Date: 1/7/2020
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>navbar</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous">
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <style>
        @import url(https://fonts.googleapis.com/css?family=Lato:300,400,700);

        @import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css);

        *,
        *:before,
        *:after {
            box-sizing: border-box;
        }

        body {
            font: 14px/22px "Lato";
            background: #6394F8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .lighter-text {
            color: #ABB0BE;
        }

        .main-color-text {
            color: #6394F8;
        }

        img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        nav {
            padding: 15px 0 15px 0;
            background-color: #333;
            font-size: 16px;
        }

        .navbar-left {
            float: left;
        }


        .navbar-right {
            float: right;
        }


        .container {
            margin: auto;
            width: 80%;
        }


        .shopping-cart {
            margin: 20px 0;
            float: right;
            background: white;
            width: 320px;
            position: relative;
            border-radius: 3px;
            padding: 20px;

        }

        .shopping-cart-header {
            border-bottom: 1px solid #E8E8E8;
            padding-bottom: 15px;
        }

        .shopping-cart-total {
            float: right;
        }

        .shopping-cart-items {

            padding-top: 20px;
        }

        li {
            margin-bottom: 18px;
        }

        img {
            float: left;
            margin-right: 12px;
        }

        .item-name {
            display: block;
            padding-top: 10px;
            font-size: 16px;
        }

        .item-price {
            color: #6394F8;
            margin-right: 8px;
        }

        .item-quantity {
            color: #ABB0BE;
        }


        .shopping-cart:after {
            bottom: 100%;
            left: 89%;
            border: solid transparent;
            content: " ";
            height: 0;
            width: 0;
            position: absolute;
            pointer-events: none;
            border-bottom-color: white;
            border-width: 8px;
            margin-left: -8px;
        }

        .cart-icon {
            color: #515783;
            font-size: 24px;
            margin-right: 7px;
            float: left;
        }

        .button {
            background: #6394F8;
            color: white;
            text-align: center;
            padding: 12px;
            text-decoration: none;
            display: block;
            border-radius: 3px;
            font-size: 16px;
            margin: 25px 0 15px 0;
        }


        .clearfix:after {
            content: "";
            display: table;
            clear: both;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        .navbar {
            overflow: hidden;
            background-color: #333;
        }

        .navbar a {
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .dropdown {
            float: left;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }

        .navbar a:hover,
        .dropdown:hover .dropbtn {
            background-color: red;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>

</head>
<style>
    article {
        border: 3px solid black;
        width: 24%;
        padding: 10px;
        box-sizing: border-box;
        min-height: 40px;

    }

    ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }
</style>
<body>

<nav>
    <div class="container">
        <div class="navbar">
            <a href="#home">Home</a>
            <a href="#news">News</a>
            <div class="dropdown">
                <button class="dropbtn">Cardio
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="${pageContext.request.contextPath}/product/treadmill">Treadmills</a>
                    <a href="${pageContext.request.contextPath}/product/elliptical">test</a>
                    <a href="${pageContext.request.contextPath}/product/bike">Bikes</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Strength
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Functionality
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </div>
            <div class="navbar-right">
                <a href="#" id="cart"><i class="fa fa-shopping-cart"></i> Cart <span class="badge">3</span></a>
            </div>
            <!--end navbar-right -->
        </div>
        <!--end container -->
    </div>
    <!--end navbar-left -->


</nav>


</body>
</html>
