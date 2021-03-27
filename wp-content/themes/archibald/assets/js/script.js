const menuBtn = document.querySelector('.button-menu');
const burgerBtn = document.querySelector('.button-burger');
const mainMenu = document.querySelector('.menu');
const burgerMenu = document.querySelector('.menu-burger');
const relatedProducts = document.getElementById('related-products');

let currentProductIndex = 0;

const onMainMenu = () => {
    mainMenu.classList.contains('open') ?
        mainMenu.classList.remove('open') :
        mainMenu.classList.add('open');
};

const onBurgerMenu = () => {
    burgerMenu.classList.contains('open') ?
        (
            burgerMenu.classList.remove('open'),
            burgerBtn.classList.remove('open')
        ) :
        (
            burgerMenu.classList.add('open'),
            burgerBtn.classList.add('open')
        );
};

const getRelatedProductsSliderHeight = () => {
    const products = relatedProducts.children;
    const heights = [];
    for (let i = 0; i < products.length; i++) {
        heights.push(products[i].offsetHeight);
    }
    const sliderHeight = Math.max.apply(Math, heights.map(height => {return height}));

    console.log(sliderHeight);

    relatedProducts.style.height = `${sliderHeight}px`;
}

const onSliderArrow = (x) => {
    const products = relatedProducts.children;
    const translationValue = relatedProducts.offsetWidth / 3 * x;

    for (let i = 0; i < products.length; i++) {
        const newLeftPosition = parseInt(products[i].style.left) + translationValue;
        products[i].style.left = `${newLeftPosition}px`;
    }
}

const renderSlider = () => {
    const products = relatedProducts.children;
    const sliderWidth = relatedProducts.offsetWidth;
    for (let i = 0; i < products.length; i++) {
        products[i].style.width = `${sliderWidth / 3}px`;
        products[i].style.left = `${sliderWidth / 3 * i}px`;
    }
}

renderSlider();




