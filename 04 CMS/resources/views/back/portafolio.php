<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">PORTAFOLIO</h1>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-3">
            <div class="card-body">
                <a href="" class="btn btn-primary">Agregar Item</a>
            </div>
        </div>
        <div class="card shadow">
            <div class="card-header">
                <h6 class="text-primary mb-0">
                    Lista de items
                </h6>
            </div>
            <div class="card-body">
                <table class="table table-hover table-responsive">
                    <thead>
                        <th>Título</th>
                        <th>Img Small</th>
                        <th>Contenido</th>
                        <th>Fecha</th>
                        <th>Estado</th>
                        <th>Vistas</th>
                    </thead>
                    <tbody>
                        <?php get_portafolio_back(); ?>
                        <!-- <tr>
                            <td>Titulo</td>
                            <td>
                                <img src="../img/portafolio/01-thumbnail.jpg" alt="" width="100">
                            </td>
                            <td style="width: 40%">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores dolorem, facere enim recusandae reiciendis soluta fugiat architecto voluptatum odit ut.
                            </td>
                            <td>2022-12-19</td>
                            <td>publicado</td>
                            <td>1789</td>
                            <td>
                                <a href="#" class="btn btn-small btn-info">editar</a>
                            </td>
                            <td>
                                <a href="#" class="btn btn-small btn-danger">borrar</a>
                            </td>
                        </tr> -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>