<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>

        <style>




            /*            @importurl (https://fonts.googleapis.com/css?family=Roboto);
            
                        @import "compass/css3";
            
                        @keyframesripple {
                            0% {
                                box-shadow:0px0px0px1pxrgba(0,0,0,0);
                            }
            
                            50% {
                                box-shadow:0px0px0px15pxrgba(0,0,0,0.1);
                            }
            
                            100% {
                                box-shadow:0px0px0px15pxrgba(0,0,0,0);
                            }
                        }*/

            .md-radio {
                margin:16px0;
            }

            .md-radio.md-radio-inline {
                display:inline-block;
            }

            .md-radioinput[type="radio"] {
                display:none;
            }

            .md-radioinput[type="radio"]:checked+label:before {
                border-color:#337ab7;
                animation: ripple 0.2slinearforwards;
            }

            .md-radioinput[type="radio"]:checked+label:after {
                transform:scale(1);
            }

            .md-radiolabel {
                display:inline-block;
                height:20px;
                position:relative;
                padding:030px;
                margin-bottom:0;
                cursor:pointer;
                vertical-align:bottom;
            }

            .md-radiolabel:before,
            .md-radiolabel:after {
                position:absolute;
                content:'';
                border-radius:50%;
                transition:all.3sease;
                transition-property: transform, border-color;
            }

            .md-radiolabel:before {
                left:0;
                top:0;
                width:20px;
                height:20px;
                border:2pxsolidrgba(0,0,0,0.54);
            }

            .md-radiolabel:after {
                top:5px;
                left:5px;
                width:10px;
                height:10px;
                transform:scale(0);
                background:#337ab7;
            }


        </style>
    </head>

    <body>
        <div class="container-fluid offset-md-1 col-10 py-0 mh-100" style="padding-top: 10px; height:100vh">
            <div class="row py-0" style="margin-top:0;padding-top:0">
                <div class="col-7 py-0 form-group" style="margin-top: 0;">
                    <br>
                    <span class="col-12 px-0" style="color: grey;">Cart >
                        <strong style="color: black;">Shipping information / Payment</strong>
                    </span>
                    <br><br>
                    <hr><br>
                    <h5>Contact Information</h5>
                    <br>
                    <form>
                        <div class="wrapper col-12 px-0">
                            <input id="semail" required type="text" class="form-control" placeholder="Email">
                        </div>
                        
                        <div class="container-fluid col-12 px-0" style="padding-top: 10px;">
                            <div class="row">
                                <div class="col-6">
                                    <input id="sfname" required type="text" class="form-control" placeholder="First name">


                                </div>
                                <div class="col-6" style="padding-left:0;">
                                    <input id="slname" required  type="text" class="form-control" placeholder="Last name">
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="wrapper col-12 px-0" style="padding-top: 10px;">
                            <h5 style="color:dimgray;">Shipping Address</h5>
                        </div>
                        <div class="wrapper col-12 px-0" style="padding-top: 10px;">
                            <input id="scompany" required type="text" class="form-control" placeholder="Company (Optional)">
                        </div>
                        <div class="wrapper col-12 px-0" style="padding-top: 10px;">
                            <input id="saddress" required type="text" class="form-control" placeholder="Address">
                        </div>
                        <div class="wrapper col-12 px-0" style="padding-top: 10px;">
                            <input id="scountry" required type="text" class="form-control" placeholder="Country">
                        </div>
                        <div class="container-fluid col-12 px-0" style="padding-top: 10px;">
                            <div class="row">
                                <div class="col-6">
                                    <input id="scity" required type="text" class="form-control" placeholder="city">


                                </div>
                                <div class="col-6" style="padding-left:0;">
                                    <input id="szip" required  type="text" class="form-control" placeholder="Postal Code">
                                </div>
                            </div>
                        </div>

                        <div class="wrapper col-12 px-0" style="padding-top: 10px;">
                            <input id="stelephone" required type="telephone" class="form-control" placeholder="Telephone">
                        </div>
                        <hr><br>

                        <h5 style="color:dimgray;">Payment</h5>
                        <p style="color:dimgray;">All transactions are secure and encrypted.(lol)</p>

                        <br>
                        <div class="col-12">
                            <div class="md-radio col-12 border py-3">
                                <input id="1" type="radio" name="g" checked>
                                <label for="1">Credit Card</label>
                            </div>
                            <div class="md-radio col-12 border py-3" style="">
                                <input id="2" type="radio" name="g" style="margin-top:10px">
                                <label for="2" style="margin-bottom: 10px;"><img style="padding-bottom:10"
                                                                                 src="https://www.paypalobjects.com/digitalassets/c/website/marketing/apac/C2/logos-buttons/34_Yellow_CheckOut_Pill_Button.png"
                                                                                 alt="Check out with PayPal" /><!-- PayPal Logo -->
                                </label>
                                <br>
                            </div>
                        </div>

                        <br>
                        <div class="container-fluid col-12 px-0" style="padding-top: 10px; padding-bottom: 10px;">
                            <div class="row">
                                <div class="col-6">
                                    <a href="#" style="color: grey;">
                                        < Return to cart</a> </div> <div class="col-6" style="padding-left:0;">
                                    <button type="submit" id="payButton" class="btn btn-success"
                                            style="border-radius: 0;background-color: olivedrab;width:100%">Pay</button>
                                </div>
                            </div>
                        </div>


                    </form>

            </div>


            <div class="col-5 container-fluid py-0 vh-100" style="background-color:rgb(249, 250, 245);padding-top:0">
                <br>
                <div id="shipping-cart-items" class="container-fluid px-0 offset-md-1 col-11">

                </div>
                <br>
                <hr>
                <br>
                <div class="wrapper col-12 flex">
                    <div class="row">
                        <span class="col-9" style="color:grey"><strong>Subtotal</strong></span>
                        <span class="col-3 align-self-end" style="text-align: end;"><strong id="totalBeforeShipping">100.00</strong></span>
                    </div>
                </div>
                <br>
                <div class="wrapper col-12 flex">
                    <div class="row">
                        <span class="col-9" style="color:grey"><strong>Shipping</strong></span>
                        <span class="col-3 align-self-end" style="text-align: end;"><strong id="shippingCost">14.00</strong></span>
                    </div>
                </div>
                <br>
                <hr>
                <div class="wrapper col-12 flex">
                    <div class="row">
                        <span class="col-9"><h5>Total</h5></span>
                        <span class="col-3 align-self-end" style="text-align: end;"><h4 id="totalAfterShipping">100.00</h4></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $("#goToPayment").on("click", function (ev) {
            location.href = "${pageContext.request.contextPath}/payment";
        });
        let _contents = localStorage.getItem('bkasjbdfkjasdkfjhaksdfjskd');
        let cart = JSON.parse(_contents);
        console.log(cart);
        let totalBeforeShipping = 0;
        cart.forEach(item => {
            $("#shipping-cart-items").append(
                    `<hr>
                  <div class="row">
                        <div class="col-sm px-0 container-fluid">
                            <img src="` + item.thumbnail + `"
                                alt="..." class="img-thumbnail" style="max-width:150px">
                        </div>
                        <div class="col-sm align-self-center text-left flex-wrap px-0">
                            <span>` + item.qty + `x : ` + item.name
                    + `</span>
                        </div>
                        <div class="col-sm align-self-center text-right flex-wrap">
                            <span class="align-self-end">` + item.price + `</span>
                        </div>
                    </div>
            `
                    );
            totalBeforeShipping = totalBeforeShipping + (item.price * item.qty);
        });

        $("#totalBeforeShipping").html(parseFloat(totalBeforeShipping).toFixed(2));
        const shiptemp = parseInt($("#shippingCost").html());
        $("#totalAfterShipping").html(parseFloat(totalBeforeShipping + shiptemp).toFixed(2));




        jQuery(document).ready(
	function($) {

		$("#payButton").click(function(event) {

			var data = {}
			data["email"] = $("#semail").val();
			data["fname"] = $("#sfname").val();
			data["lname"] = $("#slname").val();
			data["company"] = $("#scompany").val();
			data["address"] = $("#saddress").val();
			data["city"] = $("#scity").val();
			data["country"] = $("#scountry").val();
			data["zip"] = $("#szip").val();
			data["telephone"] = $("#stelephone").val();
			

			$("#payButton").prop("disabled", true);

			$.ajax({
		             type: "POST",
		             contentType: "application/json",
		             url: "${pageContext.request.contextPath}/json/createShipping",
		             data: JSON.stringify(data),
		             dataType: 'json',
		             timeout: 600000,
		             success: function (data) {
		               console.log("SUCCCESSSS");
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