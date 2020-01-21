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
    </head>
    <body>
        <footer class="footer">
        
        <div class="container col-12 text-center "
            style="border-top: 1px dotted grey; background-color:rgb(248, 246, 242);">
            
            <h3>WE ARE ALWAYS HAPPY TO HEAR FROM YOU</h3>
            <br>
            <div class="row justify-content-center">
                <div class="col-sm-3 text-center" style="border-right: 1px dotted grey; font-size: 85%;">
                    <i class="fas fa-comments fa-3x"></i><br><br>
                    <p>Try our new online chatroom and interact</p>
                    <p>with our staff,as well as other users !</p>

                    <button class="btn btn-primary" onclick="window.location.href = '${pageContext.request.contextPath}/start';">To the chatroom ></button>
                </div>
                <div class="col-sm-3 text-center" style="font-size: 85%;">
                    <i class="fas fa-phone fa-3x"></i><br><br>
                    <p>Call our Consultant on</p>
                    <br>
                    <p>+30 210 1234567</p>

                    <p>Monday to Friday
                        9:00am - 5:30pm.</p>
                </div>
            </div>

        </div>
        <div class="container col-12 d-flex justify-content-center text-white bg-dark py-2" style="padding-top:20px;">
            
            <div class="col-2">
                <p>Website operated by</p>
                <br>
                Alexandros Makryniotis<br>
                Panagiotis Nikolaidis<br>
                Nikolaos Mexis<br>
                <br><br>
                Peoplecert Athens<br>
                Panepistimiou 39,<br>
                Athens 105 64,<br>
                Greece<br>

            </div>
            <div class="col-2">
                <h6 style="color: grey;">COMPANY</h6>
                <strong><a>Contacts</a></strong> <br>
                <strong><a>Careers</a></strong><br>
                <strong><a>Send us your idea</a></strong>
                <br><br><br>
                <strong>SOCIAL</strong><br>
                <i class="fab fa-facebook-square fa-2x"></i>
                <i class="fab fa-twitter-square fa-2x"></i>
                <i class="fab fa-instagram fa-2x"></i>
            </div>
            <div class="col-2">
                <h6 style="color: grey;">SERVICES</h6>
                <strong><a>Financial Services</a></strong> <br>
                <strong><a>Support</a></strong><br>
                <br><br><br><br>
                <span style="color: grey;">YOUR LANGUAGE:</span><br>
                English

            </div>
            <div class="col-2">
                <h6 style="color: grey;">LEGAL</h6>
                <strong><a>Privacy Policy</a></strong> <br>
                <strong><a>Terms and conditions</a></strong><br>
                <strong><a>Cookie Policy</a></strong><br>
                <strong><a>Safe use of Swolepatrol products</a></strong><br>


            </div>

        </div>
    </footer>
    </body>
</html>
