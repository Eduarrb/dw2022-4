const tareaInput = document.querySelector('input');
const btn = document.querySelector('button');
const ul = document.querySelector('ul');
const alerta = document.querySelector('.alerta');

btn.addEventListener('click', () => {
    // console.log('hiciste click');
    // console.log(tareaInput.value);
    const textoLimpio = tareaInput.value.trim();
    if(textoLimpio === ''){
        alerta.innerHTML = 'Debes ingresar una tarea en la casilla 💥💥';
    } else {
        alerta.innerHTML = '';
        const li = `<li>${textoLimpio}</li>`;
        ul.insertAdjacentHTML('beforeend', li);
        tareaInput.value = '';
    }
});

const listaTareas = document.querySelectorAll('li');
// console.log(listaTareas);
for(let i = 0; i < listaTareas.length; i++){
    listaTareas[i].addEventListener('click', function(){
        // console.log('hiciste click');
        listaTareas[i].remove();
    });
}