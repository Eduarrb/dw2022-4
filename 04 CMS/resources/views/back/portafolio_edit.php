<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">EDITAR ITEM DE PORTAFOLIO</h1>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="card shadow">
            <div class="card-body">
                <?php $fila = get_portafolio_item('portafolio_edit'); ?>
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="por_titulo">Título</label>
                        <input type="text" class="form-control" id="por_titulo" name="por_titulo" required value="<?php echo $fila['por_titulo']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="por_subtitulo">Subtítulo</label>
                        <input type="text" class="form-control" id="por_subtitulo" name="por_subtitulo" required value="<?php echo $fila['por_subtitulo']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="por_imgSmall">Imagen Small</label>
                        <br>
                        <img src="../img/portafolio/<?php echo $fila['por_imgSmall']; ?>" alt="" width="200" class="mb-3">
                        <input type="file" name="img[]" id="por_imgSmall" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="por_imgLarge">Imagen Large</label>
                        <br>
                        <img src="../img/portafolio/<?php echo $fila['por_imgLarge']; ?>" alt="" width="200" class="mb-3">
                        <input type="file" name="img[]" id="por_imgLarge" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="por_contenido">Contenido</label>
                        <textarea name="por_contenido" id="por_contenido" cols="30" rows="3" class="form-control" required><?php echo $fila['por_contenido']; ?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="por_status">Estado</label>
                        <select name="por_status" id="por_status" class="form-control" required>
                            <option value="<?php echo $fila['por_status']; ?>" selected><?php echo $fila['por_status']; ?></option>
                            <?php get_statusItem($fila['por_status']); ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Editar" name="editar" class="btn btn-info">
                    </div>
                </form>
                <?php post_portafolio_edit($fila['por_id'], $fila['por_imgSmall'], $fila['por_imgLarge']); ?>
            </div>
        </div>
    </div>
</div>