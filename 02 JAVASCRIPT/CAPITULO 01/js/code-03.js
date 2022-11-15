/* ⚡⚡ TEMPLATE STRINGS ⚡⚡ */

const nombre = 'Jaimito';
const apellido = 'Rosales';

const fullName = nombre + ' ' + apellido;
console.log(fullName);

let edad = 999;
const fullData = 'Hola soy ' + fullName + ', y tengo ' + edad + ' años de edad';
console.log(fullData);

const fullDataTS = `Hola soy ${fullName}, y tengo ${edad} años de edad`;
console.log(fullDataTS);
const suma = `${edad + 100}`;
console.log(suma);

console.log('*************************');
// ⚡⚡ LA MANIPULACION DEL DOM - OBJECT DOCUMENT MODEL - DOCUMENT
const bloque = document.querySelector('.bloque');
console.log(bloque);
let html = `
    <h1>Hola, soy ${fullName}</h1>
    <h4>y tengo ${edad} años de edad</h4>
`;

bloque.innerHTML = html;