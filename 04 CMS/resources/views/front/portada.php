<section class="portada">
    <div class="portada__contenedor contenedor">
        <h1 class="hidden">Blog de agencia</h1>
        <?php
            $query_res = query("SELECT * FROM header");
            while($fila = mysqli_fetch_array($query_res)){
                print_r($fila);
            }
        ?>
        <p class="portada__contenedor--subtitulo text-center">Bienvenido A Nuestro Estudio</p>
        <p class="portada__contenedor--titulo mt-2 mb-6 text-center">es grato conocerte</p>
        <a href="#" class="portada__contenedor--btn btn btn-amarillo">dime más</a>
    </div>
</section>