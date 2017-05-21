

$(function () {

    $(".btn").click(function (e) {
        // e.preventDefault(); use this or return false
        var url = $(this).attr('href');
        $("#dialog-edit").dialog({
            title: 'Editar pacote',
            autoOpen: false,
            resizable: false,
            height: 380,
            width: 590,
            show: { effect: 'drop', direction: "up" },
            modal: true,
            draggable: true,
            open: function (event, ui) {
                $(this).load(url);
            },
            close: function (event, ui) {
                $(this).dialog('close');
            }
        });

        $("#dialog-edit").dialog('open');
        return false;
    });
    $('#edit').click(function () {
        $("#periodoDeAte").children().remove();
        $("#periodoDeAte").html("");
        $.ajax({
            url: '/Admin/Home/DeAteEditar/',
            success: function (result) {
                $('#periodoDeAte').html(result);
            }
        });
    });
    $('#De,#Ate').mask("99/99/9999");
    $('#cancelar').click(function () {
        rendereizaDeAte();
    });
    
    $('#salvar').click(function () {
        $.ajax({
            type: "POST",
            url: '/Admin/Home/DeAteSalvar/',
            data: { de: $("#De").val(), ate: $("#Ate").val(), nome: $('#Nome').val() },
            success: rendereizaDeAte
        });
    });
});



function registraEdit() {
    $('#edit').click(function () {
        $("#periodoDeAte").children().remove();
        $("#periodoDeAte").html("");
        $.ajax({
            url: '/Admin/Home/DeAteEditar/',
            success: function (result) {
                $('#periodoDeAte').html(result);
            }
        });
    });

}
function rendereizaDeAte() {
    $.ajax({
        url: '/Admin/Home/DeAte/',
        success: function (result) {
            $("#periodoDeAte").children().remove();
            $("#periodoDeAte").html("");
            $('#periodoDeAte').html('<a data-toggle="modal" href="#" id="edit"><span title="Editar período"><i class="icon-pencil"></i></span></a>' + result + '');
            registraEdit();
        }
    });
}
