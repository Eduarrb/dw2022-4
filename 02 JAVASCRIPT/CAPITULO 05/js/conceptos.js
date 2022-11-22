/* ⚡⚡ EJECUCIONES SINCRONAS Y ASINCRONAS ⚡⚡ */

// ASINCRONAS
// setInterval(function(){
//     console.log('esta es una ejecucion asincrona');
// },1000);

// SINCRONAS
let nombre = 'Eduardo';
// console.log(nombre);
let apellido = 'Arroyo';

const fullName = () => {
    return `${nombre} ${apellido}`;
}

const nombreCompleto = fullName();

// console.log(nombreCompleto);

/* ⚡⚡ PETICIONES Y RESPUESTA A APIS O BASE DE DATOS - JSON ⚡⚡ */
// JSON -> javascript object notacion
// FETCH -> DEVOLVER UNA PROMESA
// console.log(fetch('data/personas.json'));
// fetch('data/personas.json')
    // .then(datos => console.log(datos.json()))
    // .catch(err => console.log(err));

fetch('https://api.discogs.com/database/search?q=Nirvana&token=RWajOPvlzDVRGcezmLobvGJkyfmIcrbmanBAjLxg')
    .then(data => console.log(data.json()));