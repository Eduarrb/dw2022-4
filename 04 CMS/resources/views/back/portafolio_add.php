<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">AGREGAR ITEM DE PORTAFOLIO</h1>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="card shadow">
            <div class="card-body">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="por_titulo">Título</label>
                        <input type="text" class="form-control" id="por_titulo" name="por_titulo">
                    </div>
                    <div class="form-group">
                        <label for="por_subtitulo">Subtítulo</label>
                        <input type="text" class="form-control" id="por_subtitulo" name="por_subtitulo">
                    </div>
                    <div class="form-group">
                        <label for="por_imgSmall">Imagen Small</label>
                        <input type="file" name="img[]" id="por_imgSmall" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="por_imgLarge">Imagen Large</label>
                        <input type="file" name="img[]" id="por_imgLarge" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="por_contenido">Contenido</label>
                        <textarea name="por_contenido" id="por_contenido" cols="30" rows="3" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="por_status">Estado</label>
                        <select name="por_status" id="por_status" class="form-control">
                            <option value="" disabled selected>Seleccione un estado</option>
                            <option value="publicado">publicado</option>
                            <option value="pendiente">pendiente</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Guardar" name="guardar" class="btn btn-success">
                    </div>
                </form>
                <?php post_portafolio_add(); ?>
            </div>
        </div>
    </div>
</div>