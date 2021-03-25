const menuBtn = document.querySelector('.button-menu');
const burgerBtn = document.querySelector('.button-burger');
const mainMenu = document.querySelector('.menu');
const burgerMenu = document.querySelector('.menu-burger');

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