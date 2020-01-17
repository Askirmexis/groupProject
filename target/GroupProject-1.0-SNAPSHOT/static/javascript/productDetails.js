const URL = "http://localhost:8080/GroupProject_war_exploded/json/productDetails";


async function displayOneProduct() {
    const response = await fetch(`${URL}/${document.title}`)
    const data = await response.json();
    console.log(typeof data, data);

    createProductArticle(data);

}


function createProductArticle(product) {

    // btn.click(function (e) {
    //     console.log(this);
    //     cart.push(product);
    //     $("#str").text(cart.length);
    //     total = total + product.price;
    //     $("nav span").text(total.toFixed(2));
    // });
    let productStuff =
        `<article> <p>Name: ${product.name} <br> | Price: ${product.price}</p>
<img src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)">
 <button>add to cart</button>
</article>  `;
    $("#body").append(productStuff);
}


