const URL = "http://localhost:8080/GroupProject_war_exploded/json/";


async function displayProducts() {
    const response = await fetch(`${URL}`)
    const data = await response.json();
    console.log(data);

    let pricefilter = data.filter(cheaperThan);


    function cheaperThan(val) {
        return parseFloat(val.price) < document.getElementById("price").value;
    }

    pricefilter.forEach(createProductArticles);


}


function createProductArticles(product) {

    // btn.click(function (e) {
    //     console.log(this);
    //     cart.push(product);
    //     $("#str").text(cart.length);
    //     total = total + product.price;
    //     $("nav span").text(total.toFixed(2));
    // });
    let productStuff =
        `<li><article> Name: ${product.name} <br> | Price: ${product.price}<p></p>
<img src="${product.thumbnail}" alt="Adidas® T‑19x (4.0 HP)">
 <button>add to cart</button>
</article>  `;
    $("ul").append(productStuff);
}


