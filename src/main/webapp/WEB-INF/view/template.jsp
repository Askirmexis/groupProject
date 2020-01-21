
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title></title>

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
            .img{
                max-width: 300px;
                width:100%;
            }

            #pricerange{
                background-color: #37464e ;}
            input[type=range] {
                -webkit-appearance: none;
                width: 100%;
                margin: 6.8px 0;
            }
            input[type=range]:focus {
                /* outline: none; */
            }
            input[type=range]::-webkit-slider-runnable-track {
                width: 100%;
                height: 8.4px;
                cursor: pointer;
                box-shadow: 2.9px 2.9px 12.4px #140000, 0px 0px 2.9px #2e0000;
                /* background: rgba(0, 207, 215, 0.54); */
                border-radius: 3.7px;
                border: 0.2px solid #010101;
            }
            input[type=range]::-webkit-slider-thumb {
                box-shadow: 4.7px 4.7px 5.2px #000003, 0px 0px 4.7px #00001d;
                border: 0px solid rgba(0, 1, 0, 0);
                height: 22px;
                width: 21px;
                border-radius: 3px;
                background: #ffffff;
                cursor: pointer;
                -webkit-appearance: none;
                margin-top: -7px;
            }
            input[type=range]::-ms-thumb {
                box-shadow: 4.7px 4.7px 5.2px #000003, 0px 0px 4.7px #00001d;
                border: 0px solid rgba(0, 1, 0, 0);
                height: 22px;
                width: 21px;
                border-radius: 3px;
                background: #37464e;
                cursor: pointer;
                height: 8.4px;
            }
            input[type=range]:focus::-ms-fill-lower {
                background: rgba(0, 207, 215, 0.54);
            }
            input[type=range]:focus::-ms-fill-upper {
                background: rgba(31, 247, 255, 0.54);
            }
            input[type=range]::-moz-range-track {
                width: 100%;
                height: 8.4px;
                cursor: pointer;
                box-shadow: 2.9px 2.9px 12.4px #140000, 0px 0px 2.9px #2e0000;
                background: rgba(0, 207, 215, 0.54);
                border-radius: 3.7px;
                border: 0.2px solid #010101;
            }
            input[type=range]::-moz-range-thumb {
                box-shadow: 4.7px 4.7px 5.2px #000003, 0px 0px 4.7px #00001d;
                border: 0px solid rgba(0, 1, 0, 0);
                height: 22px;
                width: 21px;
                border-radius: 3px;
                background: #37464e;
                cursor: pointer;
            }
            input[type=range]::-ms-track {
                width: 100%;
                height: 8.4px;
                cursor: pointer;
                background: transparent;
                border-color: transparent;
                color: transparent;
            }
            input[type=range]::-ms-fill-lower {
                background: rgba(0, 138, 144, 0.54);
                border: 0.2px solid #010101;
                border-radius: 7.4px;
                box-shadow: 2.9px 2.9px 12.4px #140000, 0px 0px 2.9px #2e0000;
            }
        </style>
    </head>

    <body>

        <jsp:include page="navbar.jsp"/>
        <main>
            <div class="flex-grow-1">
                <section class="d-flex" >
                    <div class="" style="width:350px;min-height:100%">
                        <section class="mh-100 d-flex flex-column"
                                 style="min-height:100%">

                            <div class="flex-grow-1 p-3 o-xh o-ya">
                                <div id="price" class="row"> <a>Price </a>
                                    <a id="pricevalue">max:
                                    </a><br>
                                    <input class="form-control" value="5000" id="pricerange" type="range" min="50" max="5000" />
                                    <br>


                                </div>
                                <hr>
                                <div id="brandFilter">

                                </div>
                            </div>

                            <aside>
                                <div class="d-flex justify-content-between">
                                    <div class="p-3">
                                        <a href="#">
                                            Refresh
                                            <i class="fas fa-sync-alt"></i>
                                        </a>
                                    </div>
                                    <div class="p-3">
                                        <a href="#">
                                            Clear Filters
                                            <i class="far fa-trash-alt"></i>
                                        </a>
                                    </div>
                                </div>
                            </aside>

                        </section>

                    </div>

                    <div style="background-color: rgb(247, 247, 247);" class="container-fluid section-main o-xh o-ya p-3" style="position:relative">
                        <div id="pil" class="row">

                        </div>
                    </div>
                </section>
            </div>
        </main>
        <jsp:include page="footer.jsp"/>
        <script>
            var urlPath = location.pathname;
            var parts = urlPath.split("/");
            var lastWord = parts[(parts.length - 1)];
            document.title = lastWord;
            console.log(document.title);
            displayProducts();
            $("#pricerange").on("input", (e) => {
                document.getElementById("pricevalue").innerHTML = ' max:' + e.target.value + '';
            });
            $("#pricerange").on("change", (e) => {
                console.log(products);
                filterThing(products);
            });
            function filterThing(products) {
                $("#pil").empty();
                for (let i = 0; i < products.length; i++) {
                    const temp = renderProduct(products[i], i + 1);
                    $("#pil").append(temp);
                }
                const brandschecked = [];
                $('#brandFilter').find('input').each(function () {
                    var innerid = $(this).attr('id');
                    var checkBox = document.getElementById(innerid);
                    let temp2 = $("#label" + innerid).html();
//                    console.log(temp2);
                    if (checkBox.checked === true) {
                        if (!brandschecked.includes(temp2)) {
                            brandschecked.push(temp2);
                        }
                    }
                });
                console.log(brandschecked);
                for (let i = 1; i < products.length + 1; i++) {

                    // price range filter

                    if (parseFloat(products[i - 1].price) > document.getElementById("pricerange").value) {

                        $("#product" + products[i - 1].productId).remove();
                    }


                    // brand filters 

                    bool = true;
                    console.log("brands to check" + brandschecked);
                    brandschecked.forEach(item => {
                        if (products[i - 1].brandByBrandId.brands === item) {
                            bool = false;
                        }
                    });


                    if (bool && brandschecked.length !== 0) {
                        $("#product" + products[i - 1].productId).remove();
                    }



                }
                ;

            }


            function myFunction(id) {
                addItem(id);
            }
            ;
            function minandmax(products) {
                let min = 1000000;
                let max = 0;
                for (let i = 0; i < products.length; i++) {
                    console.log(products[i].price);
                    if (products[i].price < min) {
                        min = products[i].price;
                    }
                    if (products[i].price > max) {
                        max = products[i].price;
                    }
                }

                document.getElementById("pricevalue").innerHTML = ' max:' + max + '';
                $("#pricerange").attr({
                    'value': max,
                    'min': min,
                    'max': max
                });
            }
            const brands = [];
            function loadBrandsFilter(products) {

                for (let i = 0; i < products.length; i++) {
                    let temp = products[i].brandByBrandId.brands;
                    if (!brands.includes(temp)) {
                        brands.push(temp);
                        $("#brandFilter").append(` <input type="checkbox" id="brand` + products[i].brandByBrandId.brandId + `" onclick="mmyf(` + products[i].brandByBrandId.brandId + `)">
        <label id="labelbrand` + products[i].brandByBrandId.brandId + `" style="padding-left: 10px;" for="brand` + products[i].brandByBrandId.brandId + `">` + temp + `</label><br>`);
                    }
                }
            }

            function mmyf(id) {
//                console.log(id);
                var checkBox = document.getElementById("brand" + id);

                filterThing(products);

            }

            //    $("#addcart")on("click",function (){
            //        $("#cart-items").append(`<li class="clearfix">
            //                        <img src= alt="item1" />
            //                        <span class="item-name"></span>
            //                        <span class="item-price">$1,249.99</span>
            //                        <span class="item-quantity">Quantity: 01</span>
            //                    </li>`);
            //    });

        </script>


    </body>
</html>
