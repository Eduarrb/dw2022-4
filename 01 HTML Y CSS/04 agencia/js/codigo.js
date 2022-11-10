// DOM -> DOCUMENT OBJECT MODEL
const nav = document.querySelector('.nav');
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