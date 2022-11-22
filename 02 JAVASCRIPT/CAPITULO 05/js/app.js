const btn = document.querySelector('.btn');
const artista = document.querySelector('.search');
const discBloque = document.querySelector('.section__right__contenido__resultado__discografia');

const obtenerJson = async function(artistaSearch){
    try {
        const data = await fetch(`https://api.discogs.com/database/search?q=${artistaSearch}&type=master&artist=${artistaSearch}&format=album&token=RWajOPvlzDVRGcezmLobvGJkyfmIcrbmanBAjLxg`);
        // console.log(data);
        const resultado = await data.json();
        console.log(resultado.results);
        // for(let i = 0; i < resultado.results.length; i++){
        //     console.log(resultado.results[i].cover_image);
        // }
        let plantilla = '';
        resultado.results.forEach(el => {
            // console.log(el.cover_image);
            // plantilla = plantilla + `<img src="${el.cover_image}">`;
            plantilla += `
                <div class="section__right__contenido__resultado__discografia__item">
                    <h3 class="section__right__contenido__resultado__discografia__item--titulo">${el.title}</h3>
                    <div class="section__right__contenido__resultado__discografia__item__left">
                        <img src="${el.cover_image}" alt="${el.title}">
                        <div class="section__right__contenido__resultado__discografia__item__left__info">
                            <p>Año: <span>${el.year}</span></p>
                            <p>País: <span>${el.country}</span></p>
                        </div>
                    </div>
                </div>
            `;
        })
        // console.log(plantilla);
        discBloque.innerHTML = plantilla;
    } catch (error) {
       console.log(error);
    }   
}

btn.addEventListener('click', function(){
    // console.log(artista.value);
    obtenerJson(artista.value);
});