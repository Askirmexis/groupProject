const URLBrand = "http://localhost:8080/SpringBoot/json/brand";

async function getBrands() {
    const response = await fetch(`${URLBrand}`);
    const data = await response.json();
    console.log(data, typeof data);
    data.forEach(displayBrands);
}

function displayBrands(brand) {
    $("#brands").append(
        `<div>  
    <input type="radio" class="custom-control-input" id="${brand.brandId}" name="BrandRadios" value="${brand.brandId}">
    <label class="custom-control-label" for="BrandRadios">${brand.brands}</label>
     </div>`
    );
}














