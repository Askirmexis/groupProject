const URL = "http://localhost:8080/GroupProject_war_exploded/json";


async function displayMessages() {

    const response = await fetch(`${URL}/contact`)
    const data = await response.json();


    data.forEach(createMessageArticles);
}


function createMessageArticles(message) {

    let productStuff =
        `<li><article> Email: <a href="${message.contactEmail}">${message.contactEmail}</a> <br>
 | Name: ${message.contactName} <br>
  | Message: ${message.contactMessage}<p></p></article>  `;
    $("#messages").append(productStuff);
}
