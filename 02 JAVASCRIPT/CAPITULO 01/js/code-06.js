/* ⚡ FUNCIONES ⚡ */
function saludar(){
    // REALIZAR UNA ACCION
    console.log('hola mundo');
}

saludar();

var num2 = 10;

console.log(num2);

let num = 10;

console.log(num);
console.log('*************************');

const fechaNacimiento = 1756;
const nombre = 'Juan';

// 💡💡 PARAMETROS "VARIABLES O INPUTS QUE MANEJAN LAS FUNCIONES"
function obtenerEdad(fechaNac, nom){
    let edad = 2022 - fechaNac;
    console.log(`Hola, soy ${nom} y tengo ${edad} años de edad`);
}

// 💡💡 AL MOMENTO DE EJECUTAR LA FUNCION PASAMOS ARGUMENTOS.
obtenerEdad(fechaNacimiento, nombre);

// 💡💡 ESTA ES UNA VARIABLE GLOBAL
let apellido = 'Arroyo';
apellido = 'Gutierres';
console.log(apellido);
// let apellido = 'Salas';

function saludar2(){
    // SCOPE - AMBITO - CONTEXTO DE LA FUNCION
    let apellido = 'Marquez';
    console.log(`Hola, mi apellido es ${apellido}`);
    // SCOPE
}

saludar2();
// console.log(apellido);

function saludar3(ape){
    console.log(`hola soy ${ape}`);
}

saludar3(apellido);
console.log('************************');

const arrayNums = [123,84,351,864,34578, ['hola', 'juan']];
// arrayNums.length

function printArray(array){
    for(let i = 0; i < array.length; i++){
        console.log(array[i]);
    }
}

printArray(arrayNums);

console.log('*************************');

let res2 = 0;

function sumar(num1, num2){
    let res =  num1 + num2;
    // console.log(`la suma de ${num1} y ${num2} es igual a: ${res}`);
    // return [12,4,354,35,8636569,45];
    // return res, num1, num2;
    res2 = res;
}

// NOTA flotando el retorno
// let respuesta = sumar(5, 3);
// console.log(sumar(2,10));
// console.log(respuesta);
sumar(5,16);
console.log(res2);
