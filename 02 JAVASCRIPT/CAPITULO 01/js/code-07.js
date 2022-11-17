/* ⚡⚡ FUNCIONES DE EXPRESION ⚡⚡ */
function saludar(){
    console.log(`hola soy Juan`);
}
saludar();

/* ES6 ⚡ ARROW FUNTIONS (funciones de flecha) ⚡*/

const saludar2 = () => {
    console.log('hola desde la funcion saludar2');
}

saludar2();

const sumar = (num1, num2) => {
    return num1 + num2;
}
const res1 = sumar(2,3);
console.log(res1);
console.log('******************************');

const multiPor2 = num => {
    return num * 2;
}
console.log(multiPor2(16));

const multiPor3 = num => num * 3;
console.log(multiPor3(9));

const restaVarios = (a, b, c) => a - b - c;
console.log(restaVarios(80,5,12));