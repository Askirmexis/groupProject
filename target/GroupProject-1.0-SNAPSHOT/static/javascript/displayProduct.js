const URL = "http://localhost:8080/GroupProject_war_exploded/json";


async function displayProducts() {
    const response = await fetch(`${URL}/${document.title}`)
    const data = await response.json();
    console.log(data)
    console.log(data.name);

    data.forEach(createProductArticles);
}


function createProductArticles(product) {

    let productStuff =
        `<li><article> Name: ${product.name} <br> | Price: ${product.price}<p></p>
<a href="http://localhost:8080/GroupProject_war_exploded/products/${product.productId}"> 
<img src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)"></a>
 <button>add to cart</button>
</article>  `;
    $("#product").append(productStuff);
}


