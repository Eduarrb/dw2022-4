<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">COMENTARIOS</h1>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-3">
            <div class="card-body">
                <a href="#" class="btn btn-primary">Comentarios aprobados</a>
                <a href="#" class="btn btn-warning">Comentarios desaprobados</a>
            </div>
        </div>
        <div class="card shadow">
            <div class="card-header py-3">
                <h6 class="text-primary mb-0">Comentarios recibidos</h6>
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
                        <?php get_comentariosPorEstado(0); ?>
                        <!-- <tr>
                            <td>Eduardo Arroyo</td>
                            <td>
                                <a href="../portafolio.php?id=1" target="_blank">THREADS</a>
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur consequatur odit molestiae maxime ipsum porro labore suscipit? Assumenda nam velit est similique consectetur vero sapiente.
                            </td>
                            <td>2022-12-26</td>
                            <td>16:00:00</td>
                            <td>
                                <a href="#" class="btn btn-small btn-success">aprobar</a>
                            </td>
                            <td>
                                <a href="#" class="btn btn-small btn-danger">desaprobar</a>
                            </td>
                        </tr> -->
                    </tbody>
                </table>
                <?php post_deleteElemento('aprobar'); ?>
            </div>
        </div>
    </div>
</div>