// console.log('funciona');
// const quiz = document.querySelector('.quiz');
// quiz.style.backgroundColor = 'red';

const form = document.querySelector(".quiz-form");
const resultado = document.querySelector(".result");

const respCorrectas = ["A", "A", "A", "A"];

form.addEventListener("submit", (e) => {
  // console.log(e);
  e.preventDefault();
  // console.log(form.q1.value);
  // console.log(form.q2.value);
  // console.log(form.q3.value);
  // console.log(form.q4.value);
  const respUsuario = [
    form.q1.value,
    form.q2.value,
    form.q3.value,
    form.q4.value,
  ];

  let puntaje = 0;

  respUsuario.forEach(function (valor, indice) {
    if (valor === respCorrectas[indice]) {
      console.log(`La respuesta de la pregunta ${indice + 1} es correcta ⭐`);
      // puntaje = puntaje + 25;
      puntaje += 25;
    } else {
      console.log(`La respuesta de la pregunta ${indice + 1} es erronea 💥`);
    }
  });
  // console.log(puntaje);
//   resultado.querySelector("span").textContent = `${puntaje}%`;
  // resultado.classList.remove('d-none');

  let posicionEjeY = scrollY; // 281
  // console.log(posicionEjeY);
  // setInterval(function(){
  //     console.log('soy un mensaje');
  // }, 1000);
  let animacionTop = setInterval(function () {
    if (posicionEjeY <= 0) {
        clearInterval(animacionTop); // stop
    } else {
      // x ,  y
    //   console.log(posicionEjeY);
        posicionEjeY -= 7;
        scrollTo(0, posicionEjeY);
    }
  }, 5);

  resultado.classList.remove('d-none');

  let sumaPuntajeTotal = 0;
  let velocidad = 50;

  let animacionSuma = setInterval(() => {
    if(sumaPuntajeTotal === puntaje){
        clearInterval(animacionSuma);
    } else {
        sumaPuntajeTotal += 5;
    }

    resultado.querySelector('span').textContent = `${sumaPuntajeTotal}%`;

  }, velocidad);
});

// let c = 0;

// while (c < 10) {
//   console.log("hola");
//   c++;
// }
