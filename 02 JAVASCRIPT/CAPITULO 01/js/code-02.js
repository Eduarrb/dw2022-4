/* ⚡ NUMBERS ⚡ */
let num1 = 10;
let num2 = 2354354;
console.log(num1, num2);
console.log('10');

const pi = 3.1416;
let radio = 11.5;

// como se consigue el area de un circulo?
// operadores matematicos
// ALERTA JS es keysensitive
let areaCirculo = pi * (radio ** 2);
console.log(areaCirculo);

// ⚡⚡ RESIDUO
let num3 = 13;
console.log(num3 % 2);
if(num3 % 2 == 0){
    console.log('que el numero es par');
} else {
    console.log('el numero es impar')
}

// ⚡⚡ OPERADORES MATEMATICOS SUMA Y RESTA
// 💥💥 str nombre = 'javier'; "NO"
let num4 = '10';
let num5 = 5.5;
let res1 = parseInt(num4) + num5;
let res2 = Number(num4) + num5;
let res3 = +num4 + num5;

console.log(res1, res2, res3);
console.log('*****************************');
// ⚡⚡ INCREMENTO Y DISMINUCIÓN
let num6 = 4;
// INCREMENTARLE 5 al num6
let num7 = num6 + 5;
console.log(num7);

num6 = num6 + 5;
console.log(num6);
num6 += 13; // num6 = num6 + 13
console.log(num6);

// num6 = num6 - 2
num6 -= 2; // num6 = num6 - 2
console.log(num6);
num6 *= 2; // num6 = num6 * 2
console.log(num6)
num6 /= 3 // num6 = num6 / 2
console.log(num6)
console.log('*******************');
// num6 = num6 - 1;
// num6 -= 1;
num6--;
console.log(num6);
num6++;
console.log(num6);

console.log('********************');

// ⚡⚡ METODOS
let num8 = 100;
let divi = num8 / 3;
console.log(divi.toFixed(2));

let num9 = 10.5;
// console.log(parseFloat(num9.toFixed(2)));
// console.log(+num9.toFixed(2));
console.log(Number(num9.toFixed(2)));
console.log('***********************');
// ⚡⚡ OBJETO MATH
let res4 = Math.floor(num9);
console.log(res4);
let res5 = Math.ceil(num9);
console.log(res5);
let res6 = Math.round(num9);
console.log(res6);

// 0.000000001 hasta 0.999999999999
let aleatorio = Math.random() * 10;  
console.log(aleatorio);
console.log(Math.ceil(aleatorio));




