const menuBtn = document.querySelector('.button-menu');
const burgerBtn = document.querySelector('.button-burger');
const burgerMenu = document.querySelector('.menu-burger');

let burgerOpen = false;

menuBtn.addEventListener('click', () => {
    if (!burgerOpen) {
        burgerMenu.classList.add('open');
        burgerOpen = true;
    } else {
        burgerMenu.classList.remove('open');
        burgerOpen = false;
    }
});

burgerBtn.addEventListener('click', () => {
    if (!burgerOpen) {
        burgerBtn.classList.add('open');
        burgerMenu.classList.add('open');
        burgerOpen = true;
    } else {
        burgerBtn.classList.remove('open');
        burgerMenu.classList.remove('open');
        burgerOpen = false;
    }
});