


$(function () {

    mascaras();

    $('#Cep').blur(function (e) {

        e.preventDefault();

        $('#Endereco').val('');
        $('#Bairro').val('');
        $('#Cidade').val('');
        $('#Estado').val('');

        var cep = $('#Cep').val().replace("-", "");

        $.getJSON("http://cep.republicavirtual.com.br/web_cep.php?cep=" + cep + "&formato=json", {}, function (data) {

            if (data.resultado_txt == 'sucesso - cep completo') {
                $('#Endereco').val(data.tipo_logradouro + ' ' + data.logradouro);
                $('#Bairro').val(data.bairro);
                $('#Cidade').val(data.cidade);
                $('#Estado').val(data.uf);
            }
        });
    });
});


function mascaras() {

    $('#DataEntrada,#DataSaida').mask("99/99/9999");
    $('#Apartamento').mask("9");
    $('#HorarioPrevisto').mask("99:99");
    $('#Cep').mask("99999-999");
}

