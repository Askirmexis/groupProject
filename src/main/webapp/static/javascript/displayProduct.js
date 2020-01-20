const URL = "http://localhost:8080/GroupProject/json";
const products = [];

async function displayProducts() {
    const response = await fetch(`${URL}/${document.title}`);
    const data = await response.json();
    console.log(data);
    //get the cart items from localStorage
    CART.init();
    //load the cart items
    showCart();
    minandmax(data);

    data.forEach(createProductArticles);
}


function createProductArticles(product) {
    products.push(product);
   
    let productStuff =
            `<div id="product`+product.productId+`" class="art col-lg-4 col-md-6">Name: <span class="pname">${product.name}</span> <br> | Price: ${product.price}<p></p>
<a href="http://localhost:8080/GroupProject/products/product/${product.productId}"> 
<img class="img-fluid" src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)"></a>
<button id="${product.productId}"  class="btn btn-primary" onclick="myFunction(this.id)"><i class="fas fa-shopping-cart"></i> Add to cart</button>
<hr></div><br>`;
//    const btn = $('<button class="btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>');
//    $(productStuff).append(btn);
    $("#pil").append(productStuff);
}

function renderProduct(product) {
    let productStuff =
            `<div id="product`+product.productId+`" class="art col-lg-4 col-md-6">Name: <span class="pname">${product.name}</span> <br> | Price: ${product.price}<p></p>
<a href="http://localhost:8080/GroupProject/products/product/${product.productId}"> 
<img class="img-fluid" src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)"></a>
<button id="${product.productId}"  class="btn btn-primary" onclick="myFunction(this.id)"><i class="fas fa-shopping-cart"></i> Add to cart</button>
</div>`;
//    const btn = $('<button class="btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>');
//    $(productStuff).append(btn);
    $("#pil").append(productStuff);


}

