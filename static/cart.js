let cart = [];

function addToCart(product, price) {
    cart.push({ product, price });
    displayCart();
}

function displayCart() {
    let cartDiv = document.getElementById("cart");
    cartDiv.innerHTML = "";
    cart.forEach((item, index) => {
        cartDiv.innerHTML += `<p>${item.product} - $${item.price} <button onclick="removeFromCart(${index})">Remove</button></p>`;
    });
}

function removeFromCart(index) {
    cart.splice(index, 1);
    displayCart();
}

function saveCart() {
    let username = document.getElementById("username").value;
    if (!username) {
        alert("Put inn navnet ditt før du lagrer :).");
        return;
    }
    alert("Lagret");
}