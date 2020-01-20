const items = [];
const CART = {
    KEY: 'bkasjbdfkjasdkfjhaksdfjskd',
    contents: [],
    init() {
//check localStorage and initialize the contents of CART.contents
        let _contents = localStorage.getItem(CART.KEY);
        if (_contents) {
            CART.contents = JSON.parse(_contents);
        } else {
//dummy test data
            CART.contents = [

            ];
            CART.sync();
        }
    },
    async sync() {
        let _cart = JSON.stringify(CART.contents);
        await localStorage.setItem(CART.KEY, _cart);
    },
    find(id) {
//find an item in the cart by it's id

        let match = CART.contents.filter(item => {
            if (item.productId == id)
                return true;
        });
        if (match && match[0])
            return match[0];
    },
    add(id) {
//add a new item to the cart
//check that it is not in the cart already

        if (CART.find(id)) {
            CART.increase(id, 1);
        } else {
            let arr = products.filter(product => {
                if (product.productId == id) {
                    return true;
                }
            });
            if (arr && arr[0]) {
                let obj = {
                    productId: arr[0].productId,
                    name: arr[0].name,
                    qty: 1,
                    price: arr[0].price,
                    thumbnail: arr[0].thumbnail
                };
                CART.contents.push(obj);
                //update localStorage
                CART.sync();
            } else {
//product id does not exist in products data
                console.error('Invalid Product');
            }
        }
    },
    increase(id, qty = 1) {
//increase the quantity of an item in the cart
        CART.contents = CART.contents.map(item => {
            console.log("this is first =" + item.productId);
            if (item.productId == id)
                item.qty = item.qty + qty;
            return item;
        });
        //update localStorage
        CART.sync();
    },
    reduce(id, qty = 1) {
//reduce the quantity of an item in the cart
        CART.contents = CART.contents.map(item => {
            if (item.productId === id)
                item.qty = item.qty - qty;
            return item;
        });
        CART.contents.forEach(async item => {
            console.log("this is product id = " + item.productId);
            console.log("this is equaled id = " + id);
            console.log("this is item.qty    =" + item.qty);
            if (item.productId === id && item.qty === 0) {
                console.log("this is here in reduce");
                await CART.remove(id);
            }
        });
        //update localStorage
        CART.sync();
    },
    remove(id) {
//remove an item entirely from CART.contents based on its id
        CART.contents = CART.contents.filter(item => {
            console.log("this is here in remove");
            if (item.productId !== id)
                return true;
        });
        //update localStorage
        CART.sync();
    },
    empty() {
//empty whole cart
        CART.contents = [];
        //update localStorage
        CART.sync();
    },
    sort(field = 'name') {
//sort by field - title, price
//return a sorted shallow copy of the CART.contents array
        let sorted = CART.contents.sort((a, b) => {
            if (a[field] > b[field]) {
                return 1;
            } else if (a[field] < a[field]) {
                return -1;
            } else {
                return 0;
            }
        });
        return sorted;
        //NO impact on localStorage
    },
    logContents(prefix) {
        console.log(prefix, CART.contents);
    }
};
function showCart() {
    items.push(CART.contents);
    $("#cart-items").empty();
    let q = 0;
    let totalAmount = 0;
    let s = CART.sort('qty');
    s.forEach(item => {
        totalAmount = totalAmount + (item.qty * item.price);
        q = q + item.qty;
        $("#cart-items").append(`<li id="itemInCart` + item.productId + `" class="clearfix">
                                            <img class="imgthumb" src="` + item.thumbnail + `" alt="item1" />
                                            <span class="item-name">` + item.name + `</span>
                                            <span class="item-price">Price: ` + item.price + `</span>
                                            <span id="quant` + item.productId + `" class="item-quantity">Quantity:<span id="qty` + item.productId + `">` + item.qty + `</span></span>
        <button id="${item.productId}down"  class="btn" onclick="decrementCart(this.id)"><i class="fas fa-minus-circle"></i></button>
        <button id="${item.productId}up"  class="btn" onclick="incrementCart(this.id)"><i class="fas fa-plus-circle"></i></button>
                                        <hr></li>`);
    });
    $("#total").html(totalAmount);
    $("#itemsAmount").html(q);
    $("#itemsAmount2").html(q);
}



function addItem(id) {

    let parseid = parseInt(id);
    CART.add(id, 1);
    showCart();
}


function incrementCart(upid) {
    let id = parseInt(upid);
    CART.increase(id, 1);
    let prevTotal = parseInt($("#total").html());
    let prevAmount = parseInt($("#itemsAmount").html());
    let item = CART.find(id);
    $("#total").html(prevTotal + item.price);
    $("#itemsAmount").html(prevAmount + 1);
    $("#itemsAmount2").html(prevAmount + 1);
    if (item) {
        $("#qty" + id).html(item.qty);
    }
}
function decrementCart(downid) {
    let id = parseInt(downid);
    let prevTotal = parseInt($("#total").html());
    let prevAmount = parseInt($("#itemsAmount").html());
    let item = CART.find(id);
    $("#total").html(prevTotal - item.price);
    if (item.qty < 2) {
        console.log("this went here for 1 prod or less");
        $("#itemInCart" + id).remove();
    } else {
        console.log("this went in here for 2 + ");
        $("#qty" + id).html(item.qty - 1);
    }
    CART.reduce(id, 1);
    $("#itemsAmount").html(prevAmount - 1);
    $("#itemsAmount2").html(prevAmount - 1);
}
  


