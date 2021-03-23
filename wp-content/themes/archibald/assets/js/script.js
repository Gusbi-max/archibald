const menuBtn = document.querySelector('.button-menu');
const burgerBtn = document.querySelector('.button-burger');
const mainMenu = document.querySelector('.menu');
const burgerMenu = document.querySelector('.menu-burger');

let menuOpen = false;

menuBtn.addEventListener('click', () => {
    if (!menuOpen) {
        mainMenu.classList.add('open');
        menuOpen = true;
    } else {
        mainMenu.classList.remove('open');
        menuOpen = false;
    }
});

burgerBtn.addEventListener('click', () => {
    if (!menuOpen) {
        burgerBtn.classList.add('open');
        burgerMenu.classList.add('open');
        menuOpen = true;
    } else {
        burgerBtn.classList.remove('open');
        burgerMenu.classList.remove('open');
        menuOpen = false;
    }
});