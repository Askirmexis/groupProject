<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit profile</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <style>
            .error{
                color:red;
            }
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <br>
        <br>
        <div class="text-center">
            <h1 style="color: darkslategray; font-size: 60px;"><strong>Edit your profile</strong></h1>
        </div>
        <br><br>
        <hr>
        <h6 style="text-align:center">Personal Information</h6>
        <hr>
        <br><br>
        <form>
            <div class="container-fluid col-8 offset-md-2 form-group">
                <p>Welcome to SWOLEPATROL personal area. Help us to know you better. This will allow us tailoring offers to your
                    needs. In your personal area you may check your orders and access exclusive contents.</p>
                <br>
                <div class="row">
                    <div class="col-sm form-group">
                        <label for="Fname">First Name *</label>
                        <input type="text" class="form-control" id="Fname" placeholder="Enter first name"/>
                        <br>
                        <label for="exampleInputEmail1">Email address *</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                               placeholder="Enter e-mail"/>

                    </div>
                    <div class="col-sm form-group">
                        <label for="Lname">Last Name *</label>
                        <input type="text" class="form-control" id="Lname" placeholder="Enter last name"/>
                        <br>
                        <label for="postcode">Postcode *</label>
                        <input type="text" class="form-control" id="postcode" placeholder="Enter postcode"/>


                    </div>

                </div>
                <div class="form-group">
                    <label for="address">Street Address *</label>
                    <input type="text" class="form-control" id="address" placeholder="Enter Street Address"/>
                </div>
                <div class="row">
                    <div class="col-sm form-group">
                        <label for="snumber">Street Number *</label>
                        <input type="number" class="form-control" id="snumber" placeholder="Enter street number"/>
                        <br>
                        <label for="password">Password *</label>
                        <input type="password" class="form-control" id="password" placeholder="Enter password"/>
                    </div>
                    <div class="col-sm form-group">
                        <label for="country">Country *</label>
                        <input type="text" class="form-control" id="country" placeholder="Enter country"/>
                        <br>
                        <label for="username">Username</label>
                        <input  type="text" class="form-control" id="username" placeholder="Enter username"/>

                        <
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
                    <button type="submit" class="btn btn-primary" id="edit">Submit</button>
                </div>
            </div>
        </form>
        <br>
        <jsp:include page="footer.jsp"/>
        <script>
            jQuery(document).ready(
                    function ($) {

                        $("#edit").click(function (event) {
                            event.preventDefault();
                            var data = {};
                            data["email"] = $("#exampleInputEmail1").val();
                            data["fname"] = $("#Fname").val();
                            data["lname"] = $("#Lname").val();
                            data["address"] = $("#address").val();
                            data["streetNumber"] = $("#snumber").val();
                            data["country"] = $("#country").val();
                            data["zip"] = $("#postcode").val();
                            data["username"] = $("#username").val();
                            data["password"] = $("#password").val();
                            
                            console.log(data);
                            $.ajax({
                                type: "PUT",
                                contentType: "application/json",
                                url: "${pageContext.request.contextPath}/user/update",
                                data: JSON.stringify(data),
                                dataType: 'json',
                                timeout: 600000,
                                success: function (data) {
                                    console.log("SUCCESS");
                                    window.location = "${pageContext.request.contextPath}";
                                },

                                error: function (e) {
                                    console.log("ERROR ERRORR");
                                }
                            });
                        });
                    });




        </script>



    </body>
</html>
