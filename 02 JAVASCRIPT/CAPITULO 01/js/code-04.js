/* ⚡⚡ ARRAYS - LISTAS ⚡⚡ */
// 💡💡 SON UN CONJUNTO DE ELEMENTOS
// NOTA son un tipo de objeto

const numeros = [12,846,654,684,534,687,354,867,3589];
console.log(numeros);
console.log(numeros.length);

// 🔥🔥 INDICES
console.log(numeros[7]);
console.log(numeros[8]);
console.log(numeros[numeros.length - 1]);

const personajes = ['joshi', 'mario', 'honguito', 'wario'];
console.log(personajes);

const arrayMixto = [12, '12', false, ['ryo', 'blanca']];
console.log(arrayMixto);
console.log(arrayMixto[3]);
console.log(arrayMixto[3][1]);
console.log('*******************************');

const personajes2 = ['joshi', 'mario', 'ryo', 'ironman', 'thor', 'kratos', 'ken', 'atreus', 'thanos', 'batman'];

// const bloque = document.querySelector('.bloque');
// bloque.innerHTML = personajes2;
// ⚡⚡ LOOPS
// NOTA ciclo de repeticiones
// (contador, condicion, resta o suma del contador)
let html = '';
// for(let contador = 0; contador < 10; contador++){
//     // accion
//     // console.log(personajes2[contador]);
//     // html = html + personajes2[contador];
//     // html = html + `<a href="#">${personajes2[contador]}</a>`;
//     html += `<a href="#">${personajes2[contador]}</a>`;
// }
// console.log(html);
const bloque = document.querySelector('.bloque');

for(let i = 0; i < personajes2.length; i++){
    html += `<a href="#">${personajes2[i]}</a>`;
}
bloque.innerHTML = html;
