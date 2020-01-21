const URL2 = "http://localhost:8080/GroupProject/json/productDetails";


async function displayOneProduct() {
    const response = await fetch(`${URL2}/${document.title}`);
    const data = await response.json();
    console.log(typeof data, data);
    createProductArticle(data);

}


function createProductArticle(product) {

   
    let productStuff =
        `<div class="container">
        <div class="row">
            <div class="col-lg">
                <!--Carousel Wrapper-->
                <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">
                    <!--Slides-->
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="`+product.thumbnail+`" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" `+"SameSite=None"+" Secure"+` src="`+product.pic2+`" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" `+"SameSite=None"+" Secure"+` src="`+product.pic3+`">
                        </div>
                    </div>
                    <!--/.Slides-->
                    <!--Controls-->
                    <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                    <!--/.Controls-->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-thumb" data-slide-to="0" class="active"> <img class="d-block w-100"
                                src="`+product.thumbnail+`" class="img-fluid"></li>
                        <li data-target="#carousel-thumb" data-slide-to="1"><img class="d-block w-100"
                                src="`+product.pic2+`" `+"SameSite=None"+" Secure"+` class="img-fluid"></li>
                        <li data-target="#carousel-thumb" data-slide-to="2"><img class="d-block w-100"
                                src="`+product.pic3+`"  `+"SameSite=None"+" Secure"+` class="img-fluid"></li>
                    </ol>
                </div>
                <!--/.Carousel Wrapper-->
            </div>
            <div class="col-lg bg-white" style="border: 1px black">
                <h3>`+product.name+`</h3>
                <br>
                <h6>`+product.description+`</h6>
                <p><strong>Brand:</strong> `+product.brandByBrandId.brands+`</p>
                <br><br>
                <div class="container" style="">
                    <div class="row px-0 ">
                        <div class="col-12 px-0" style="">
                            <section style="padding-top: 4px">
                                <p>Pricing is inclusive of VAT, 2 years warranty, transport and installation.</p>
                                <p> The transport and installation provided by Swolepatrol are high quality services,
                                    with maximum attention to detail. Installation includes assembly and positioning of
                                    the equipment, testing and final cleaning of the installation area. The services can
                                    be booked on a specific day and at a time that suits you.</p>
                            </section>
                        </div>
                        <br>
                        <div class="col-12 py-0 my-0" style="">
                            <strong>In stock: </strong> `+yesOrNo(product)+`
                        </div>
                        <div class="col-12">
                            <br>
                            <p class="py-0 my-0"><strong>Price:`+product.price+`$</strong></p>
                        </div>
                        <div class="col-12 py-0 my-0" style="text-align:center;"><button
                                class="btn btn-primary px-3 mx-3 my-3" onclick="addToCart(`+product.productId+`)">Add to cart</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>`;
    $("#body").append(productStuff);
    function yesOrNo(item){
    if(item.stock>0){
        return "YES";
    }else{
        return "NO";
    }    
    }
    
}
