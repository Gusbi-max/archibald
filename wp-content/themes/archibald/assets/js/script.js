const menuBtn = document.querySelector('.button-menu');
const burgerBtn = document.querySelector('.button-burger');
const mainMenu = document.querySelector('.menu');
const burgerMenu = document.querySelector('.menu-burger');

/* Related products slider variables */
const relatedProducts = document.getElementById('related-products');
const sliderArrowPrevious = document.getElementById('slider-arrow-previous');
const sliderArrowNext = document.getElementById('slider-arrow-next');
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
};

const getProductsVisible = () => {
    const productsWrapper = document.getElementById('related-products-wrapper');
    if ( parseInt(productsWrapper.offsetWidth) < 600 ) {
        return 1;
    } else if ( parseInt(productsWrapper.offsetWidth) > 600 && parseInt(productsWrapper.offsetWidth) < 1000 ) {
        return 2;
    } else if ( parseInt(productsWrapper.offsetWidth) > 1000 && parseInt(productsWrapper.offsetWidth) < 1440 ) {
        return 3;
    } else {
        return 4;
    }
};

const onSliderArrow = (x) => {
    currentProductIndex -= x;
    sliderArrowPrevious.style.display = currentProductIndex < relatedProducts.children.length - 1 ? 'flex' : 'none';
    sliderArrowNext.style.display = currentProductIndex > 0 ? 'flex' : 'none';
    const productsVisible = getProductsVisible();
    const products = relatedProducts.children;
    const translationValue = relatedProducts.offsetWidth / productsVisible * x;

    for (let i = 0; i < products.length; i++) {
        const newLeftPosition = parseInt(products[i].style.left) + translationValue;
        products[i].style.left = `${newLeftPosition}px`;
    }
};

const renderSlider = () => {
    const products = relatedProducts.children;
    const sliderWidth = relatedProducts.offsetWidth;
    const productsVisible = getProductsVisible();
    for (let i = 0; i < products.length; i++) {
        products[i].style.width = `${sliderWidth / productsVisible}px`;
        products[i].style.left = `${sliderWidth / productsVisible * i}px`;
    }
};

renderSlider();




