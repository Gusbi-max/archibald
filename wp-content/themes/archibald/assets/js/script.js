const burgerBtn = document.querySelector('.button-burger');
const burgerMenu = document.querySelector('.menu-burger');

let burgerOpen = false;

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