const URL = "http://localhost:8080/GroupProjectLatest/json";
const products = [];

async function displayProducts() {
    const response = await fetch(`${URL}/${document.title}`);
    const data = await response.json();
    console.log(data);
    //get the cart items from localStorage
    CART.init();
    //load the cart items
    showCart();

    data.forEach(createProductArticles);
}


function createProductArticles(product) {
    products.push(product);
    // btn.click(function (e) {
    //     console.log(this);
    //     cart.push(product);
    //     $("#str").text(cart.length);
    //     total = total + product.price;
    //     $("nav span").text(total.toFixed(2));
    // });
    let productStuff =
            `<div id="product`+product.productId+`" class="art col-lg-4 col-md-6">Name: <span class="pname">${product.name}</span> <br> | Price: ${product.price}<p></p>
<a href="http://localhost:8080/GroupProject/products/${product.productId}"> 
<img class="img-fluid" src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)"></a>
<button id="${product.productId}"  class="btn btn-primary" onclick="myFunction(this.id)"><i class="fas fa-shopping-cart"></i> Add to cart</button>
</div>`;
//    const btn = $('<button class="btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>');
//    $(productStuff).append(btn);
    $("#pil").append(productStuff);
}

function renderProduct(product) {
    let productStuff =
            `<div id="product`+product.productId+`" class="art col-lg-4 col-md-6">Name: <span class="pname">${product.name}</span> <br> | Price: ${product.price}<p></p>
<a href="http://localhost:8080/GroupProject/products/${product.productId}"> 
<img class="img-fluid" src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)"></a>
<button id="${product.productId}"  class="btn btn-primary" onclick="myFunction(this.id)"><i class="fas fa-shopping-cart"></i> Add to cart</button>
</div>`;
//    const btn = $('<button class="btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>');
//    $(productStuff).append(btn);
    $("#pil").append(productStuff);


}

