// DOM -> DOCUMENT OBJECT MODEL
const nav = document.querySelector('.nav');
const boton = document.querySelector('.nav__contenedor--btn');
const menu = document.querySelector('.nav__contenedor__menu');
// console.log(nav);
// nav.classList.add('cambioDeNav');

// console.log(window. pageYOffset);
window.addEventListener("scroll", function(){
    // console.log(window.pageYOffset);
    if(window.scrollY > 0){
        nav.classList.add('cambioDeNav');
    }
    else {
        nav.classList.remove('cambioDeNav');
    }
});

boton.addEventListener('click', function(){
    // console.log('hiciste click');
    menu.classList.toggle('mostrarMenu');
})