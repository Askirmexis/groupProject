<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>


        <style>

        </style>
    </head>

    <body>

        <jsp:include page="navbar.jsp"/>

        <!-- Here begins the cart ! -->
        <main>
            <div class="col-sm-10 offset-md-1">
                <h3 style="color: gray; text-align: center;">Your Cart</h3>

            </div>
            <br>
            <hr>
            <div class="container col-md vh-90">
                <div id="checkoutContainer" style="text-align: center; " class="container offset-md-1 col-10">
                    <strong stlye="font-size: 55px;">YOUR CART IS EMPTY</strong>

                </div>
                <div>
                    <hr>
                    <br><br>
                    <h3 style="text-align: right;">Total: <a id="totalPriceSomething">100.00</a> $</h3>
                    <div class="form-check text-right">
                        <form>
                            <input onchange="activateButton(this)" class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                            <label class="form-check-label" for="invalidCheck">
                                I Agree to the <a href="#">SWOLE PATROL Terms of Use</a> and <a href="#">Privacy Policy</a>
                            </label>
                            <div class="invalid-feedback">
                                You must agree before submitting.
                            </div>
                            <br>
                            <button id="checkoutC" onclick="window.location.href = '${pageContext.request.contextPath}/shipping';" class="btn btn-success text-center my-2" style="min-width:15%">Checkout</button>
                        </form>

                        <button class="btn text-center border my-2" style="min-width: 15%;"
                                onclick="window.location.href = 'https://w3docs.com';">Continue Shopping</button>
                    </div>

                </div>
            </div>
        </main>
        <script>
            console.log("asdhuasdhausdhua");
            document.getElementById("checkoutC").disabled = true;


            function activateButton(element) {
console.log("this is ne here");
                if (element.checked) {
                    document.getElementById("checkoutC").disabled = false;
                }
            }
            $("#checkoutC").on("click", function (ev) {
                ev.preventDefault();
                location.href = "${pageContext.request.contextPath}/shipping";
            });
            let _contents = localStorage.getItem('bkasjbdfkjasdkfjhaksdfjskd');
            let cart = JSON.parse(_contents);
            let totalBeforeShipping = 0;
            CART.init();
            showCart();
            if (cart.length != 0) {
                $("#checkoutContainer").empty();
            }
            cart.forEach(item => {
                $("#checkoutContainer").append(`
              
    <div class="row align-items-center">
                        <div class="col-3 px-0 text-center">
                            <img src="` + item.thumbnail + `"
                                 alt="..." class="img-thumbnail" style="max-width:150px">
                        </div>
                        <div class="col-3 px-0 text-left">
                            <strong>` + item.name + `!</strong>
                        </div>
                        <div class="col-2 px-0">
                            Price: $` + item.price + `
                        </div>
                        <div class="col-2 px-0 justify-content-center align-items-center text-center">
                            <div class="button-group">
                                
                                <input type="text" name="updates[]" class="input-quantity px-0 mx-0"
                                       id="updates_12669232250952" readonly min="0" value="` + item.qty + `" style="max-width:50px">
                              
                            </div>
                        </div>
                        <div class="col-2 px-0 text-center">
                            Subtotal: $` + (item.price * item.qty) + `
                        </div>
                    </div>
    `);
                totalBeforeShipping = totalBeforeShipping + (item.price * item.qty);
            });
            $("#totalPriceSomething").html(parseFloat(totalBeforeShipping).toFixed(2));
        </script>
    </body>

</html>