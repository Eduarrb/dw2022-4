const btn = document.querySelector('button');
// console.log(btn);
const popupCaja = document.querySelector('.popup-caja');
// console.log(popupCaja);
const btnClose = document.querySelector('.popup-close');

btn.addEventListener('click', () => {
    // console.log('hiciste click');
    popupCaja.classList.add('mostrarCaja');
});

btnClose.addEventListener('click', function(){
    popupCaja.classList.remove('mostrarCaja');
});

window.addEventListener('keyup', e => {
    console.log(e);
    if(e.key === 'Escape'){
        popupCaja.classList.remove('mostrarCaja');
    }
})