const URL = "http://localhost:8080/GroupProject/json";
const products = [];

async function displayProducts() {
    const response = await fetch(`${URL}/${document.title}`);
    console.log(response);
    console.log(`${document.title}`);
    const data = await response.json();
    console.log(data);
    //get the cart items from localStorage
    CART.init();
    //load the cart items
    showCart();
    if (`${document.title}` !== "messages") {
        minandmax(data);
        loadBrandsFilter(data);
    }
    data.forEach(createProductArticles);
}


function createProductArticles(product) {

    if (`${document.title}` === "messages") {
        let tempmsg = `<li>
                                        <a href="#">
                                            <div class="message-avatar">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                            </div>
                                            <div class="message-body">
                                                <div class="message-body-heading">
                                                    <h5>` + product.contactName + `<span class="unread">Unread</span></h5>
                                                    <span>7 hours ago</span>
                                                </div>
                                                <p>` + product.contactMessage + `</p>
                                            </div>
                                        </a>
                                    </li>`;
        $("#messages").append(tempmsg);
    } else {
        products.push(product);
        let productStuff =
                `<div id="product` + product.productId + `" class="art col-lg-4 col-md-6">Name: <span class="pname">${product.name}</span> <br> | Price: ${product.price}<p></p>
<a href="http://localhost:8080/GroupProject/products/product/${product.productId}"> 
<img class="img-fluid" src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)"></a>
<button id="${product.productId}"  class="btn btn-primary" onclick="myFunction(this.id)"><i class="fas fa-shopping-cart"></i> Add to cart</button>
<hr></div><br>`;
        $("#pil").append(productStuff);
    }
//    const btn = $('<button class="btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>');
//    $(productStuff).append(btn);

}

function renderProduct(product) {
    let productStuff =
            `<div id="product` + product.productId + `" class="art col-lg-4 col-md-6">Name: <span class="pname">${product.name}</span> <br> | Price: ${product.price}<p></p>
<a href="http://localhost:8080/GroupProject/products/product/${product.productId}"> 
<img class="img-fluid" src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)"></a>
<button id="${product.productId}"  class="btn btn-primary" onclick="myFunction(this.id)"><i class="fas fa-shopping-cart"></i> Add to cart</button>
</div>`;
//    const btn = $('<button class="btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>');
//    $(productStuff).append(btn);
    $("#pil").append(productStuff);


}

