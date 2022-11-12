// ⚡⚡ JAVASCRIPT
/* 🔥🔥 TIPOS DE DATOS 🔥🔥 */
/*
    - STRING = CADENAS DE TEXTO
    - NUMBERS = NUMEROS DE TODO TIPO
    - BOOLEANS, OPERADORES LOGICOS CONDICIONALES
    - OBJECTS 
*/

/* ⚡ STRINGS⚡ */
// var, let, const

// BREAKPOINT ENTRE ES5 (2015) Y ES6 > 2015 
// ES5
// el signo igual (=) es para asignar
var nombre = 'Eduardo';

// ES6
let apellido = "Arroyo";
console.log(apellido);
const pi = '3.1416';
// apellido = 'Arroyo Salas';
console.log(apellido);
// pi = '3.141625';

// ⚡⚡ CONCATENAR
// "+" js sabe que tiene que sumar o concatenar
// HOISTING
// 💥💥 JS COMO TAL TIENE COSAS RARAS
const fullName = nombre + ' ' + apellido;
console.log(fullName);
console.log(fullName + 1.3);

// ⚡⚡ PROPIEDADES HACEN REFERENCIA A UN OBJETO
// objeto.propiedad
// objeto.metodo()
// NOTA LOS STRING SON UN TIPO DE OBJETO PARA JS
console.log(nombre.length);
console.log(fullName.length);
let word = 'sdfjhgdsfhgsdagfhdsagfhasdgfhlgdw';
// ⚡⚡ INDICES
// P A L A B R A
// 0 1 2 3 4 5 6
console.log(nombre[0]);
console.log(nombre[6])
console.log(word[word.length - 1]);

// ¿cual es el codigo? = earroyo@continental.edu.pe

let correo = nombre[0] + apellido + '@continental.edu.pe';
console.log(correo);

// ⚡⚡ METODOS
console.log(correo.toUpperCase());
console.log(correo.toLowerCase());