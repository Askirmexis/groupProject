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
        <style>


            body {
                background-color: whitesmoke;
            }

            #carousel-thumb {
                max-width: 600px;
                max-height: 600px;
            }

            .carousel-thumbnails .carousel-indicators img {
                max-width: 100px;
                height: 50px;
                overflow: hidden;
                display: block;
            }


            .carousel-thumbnails .carousel-indicators li {
                height: auto;
                max-width: 100px;
                width: 100px;
                border: none;
                box-shadow: 1px 3px 5px 0px rgba(0, 0, 0, 0.75);


            }

            * {
                box-sizing: border-box;
            }

            .col-md-3 {
                display: inline-block;
                margin-left: -4px;
            }

            .col-md-3 img {
                width: 100%;
                height: auto;
            }



            body .carousel-control-prev-icon,
            body .carousel-control-next-icon {


                background-color: black;

            }
        </style>

    </head>
    <%@include file="navbar.jsp" %>

    <body >
        <div id="body"></div>
        <%@include file="footer.jsp"%>
        <script>
            displayOneProduct();
            
            
             function addToCart(id) {
                 console.log(id);
                addItem(id);
            }
            ;
        </script>
    </body>
</html>
