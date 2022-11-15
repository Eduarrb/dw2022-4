/* ⚡⚡ CONDICIONALES Y BOOLEANOS ⚡⚡ */
// true
// false

/*
    💡💡 OPERADORES DE COMPARACION
    IGUALDAD SIMPLE -> ==
    IGUALDAD ESTRICTA -> ===
    ASIGNACION -> =
    >, >=, <, <=
    DIFERENTE SIMPLE -> !=
    DIFERENTE ESTRICTO -> !==
*/
let num = 23;

if(num === '23'){
    console.log('si son iguales');
} else {
    console.log('no, son diferentes');
}

if(num > 40){
    console.log(`el numero ${num} es mayor que 40`);
} 
else {
    console.log(`el numero ${num}, no es mayor que 40`);
}

console.log(typeof(num));
console.log(typeof(true));

if(typeof(num) === 'number'){
    console.log('si es un numero');
}

if(num !== '23'){
    console.log('son diferentes');
} else {
    console.log('son iguales');
}