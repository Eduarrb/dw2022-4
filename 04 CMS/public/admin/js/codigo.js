$(document).ready(function(){
    $('.delete_link').on('click', function(){
        $('.titleDelete').html('Desacativar Items');
        $('.bodyDelete').html('¿Estas seguro de eliminar este item?');
        const btn = document.querySelector('.btn_delete_link');
        btn.classList.remove('btn-primary');
        btn.classList.add('btn-danger');
        btn.textContent = 'Desactivar';
        $('#deleteModal').modal('show');
    })
});