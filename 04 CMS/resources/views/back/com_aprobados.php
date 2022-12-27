<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">COMENTARIOS APROBADOS</h1>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-3">
            <div class="card-body">
                <a href="index.php?comentarios" class="btn btn-primary">Regresar</a>
            </div>
        </div>
        <?php mostrar_msj(); ?>
        <div class="card shadow">
            <div class="card-header py-3">
                <h6 class="text-primary mb-0">Comentarios Aprobados</h6>
            </div>
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Nombres y apellidos</th>
                            <th>Item</th>
                            <th>Mensaje</th>
                            <th>Fecha</th>
                            <th>Hora</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php get_comentariosPorEstado(1); ?>
                    </tbody>
                </table>
                <?php post_aprobar_desaprobar_com(); ?>
            </div>
        </div>
    </div>
</div>