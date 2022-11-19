/* ⚡ OBJETOS ⚡ */
/*
    objeto => propiedades y caracteristicas
    CELULAR
    color -> mate
    marca -> apple
    modelo -> iphone20,
    size -> 6.5'
    precio -> 8000
*/

const celular = {
    // key - value pair
    color: 'mate',
    marca: 'iphone',
    precio: 8000,
    accesorios: ['cargador', 'audifonos', 'pegatinas'],
    activoPeru: true,
    piezas: {
        pantalla: 'gorila glass',
        camFront: '12mp',
        camBack: '40mp'
    }
}

console.log(celular);
console.log(celular.marca);
console.log(celular.piezas.pantalla);
console.log(celular.accesorios[1]);

const usuario = {
    nombre: 'Jaimito',
    correo: 'jaimito@gmail.com',
    cel: '908256365',
    edad: 31,
    // ⚡⚡ METODOS
    saludar: function(){
        console.log('Hola a todosssss');
    },
    obtenerEdad: function(fechaNac){
        return 2022 - fechaNac;
    },
    correr: () => {
        console.log('sali a correr a las 6am');
    }
}
// console.log(usuario);
usuario.saludar();
console.log(usuario.obtenerEdad(1890));
const edad = usuario.obtenerEdad(1991);
console.log(edad);
usuario.correr();
console.log('*****************');

// this hacer referencia al objeto en el ambito donde se le este ejecutando
console.log(this); // ambito global -> objeto global -> window

const personaje = {
    nombre: 'Joshi',
    correo: 'joshi@nintendo.com',
    skills: ['saltar', 'comer tortugas', 'sacar la lengua', 'correr'],
    imprimirThis: function(){
        console.log(this);
    },
    saltar: function(){
        console.log(`hola soy ${this.nombre} y estoy saltando`);
    },
    imprimirSkills: function(etiqueta){
        let plantilla = '';
        for(let i = 0; i < this.skills.length; i++){
            // console.log(this.skills[i]);
            plantilla = plantilla + `<h2>${this.skills[i]}</h2>`
        }
        console.log(plantilla);
        etiqueta.innerHTML = plantilla;
    },
    saludar: () => {
        console.log(`hola soy ${this}`);
    }

}
personaje.imprimirThis();
personaje.saltar();
let bloque = document.querySelector('#bloque');
personaje.imprimirSkills(bloque);
personaje.saludar();