const URL2 = "http://localhost:8080/GroupProject/json/productDetails";


async function displayOneProduct() {
    const response = await fetch(`${URL2}/${document.title}`);
    const data = await response.json();
    console.log(typeof data, data);
    createProductArticle(data);

}


function createProductArticle(product) {

   
    let productStuff =
        `<article> <p>Name: ${product.name} <br> | Price: ${product.price}</p>
<img src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)">
 <button>add to cart</button>
</article>  `;
    $("#body").append(productStuff);
}


