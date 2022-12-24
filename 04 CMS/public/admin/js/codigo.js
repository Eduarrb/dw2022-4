$(document).ready(function(){
    $('.delete_link').on('click', function(){
        const id = $(this).attr('rel');
        const delete_url = `index.php?portafolio&delete=${id}`;
        $('.titleDelete').html('Desacativar Items');
        $('.bodyDelete').html('¿Estas seguro de eliminar este item?');
        $('.btn_delete_link').attr('href', delete_url);
        const btn = document.querySelector('.btn_delete_link');
        btn.classList.remove('btn-primary');
        btn.classList.add('btn-danger');
        btn.textContent = 'Desactivar';
        $('#deleteModal').modal('show');
    })
});