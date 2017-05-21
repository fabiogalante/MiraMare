
function isValidEmail(email) {
    return /^[a-z0-9]+([-._][a-z0-9]+)*@([a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,4}$/.test(email)
        && /^(?=.{1,64}@.{4,64}$)(?=.{6,100}$).*/.test(email);
}


////function  calendario() {
    
////    $('#entrada').datepicker({
////        format: "dd/mm/yyyy",
////        todayBtn: true,
////        language: "pt-BR"
////    });

////}

function contact() {
    
    $('#contatoSubmitEnglish').click(function (e) {
        e.preventDefault();

        $('#mensagemErro').empty();
        var nome = $('#nome').val();
        var email = $('#email').val();
        var mensagem = $('#mensagem').val();

        if (nome == '') {
            $('#mensagemErro').append("Type your name");
        } else if (email == '') {
            $('#mensagemErro').append("Type your email");
        } else if (mensagem == '') {
            $('#mensagemErro').append("Type your messagem");
        } else {

            $.getJSON("/Home/EnviarEmailContato", { nome: nome, email: email, mensagem: mensagem }, function (data) {
                $('#mensagemErro').append(data.Mensagem);
            });
        }
    });
}

//function reservar() {

//    $('#reservar').click(function (e) {
//        e.preventDefault();
        
//        var nome = $('#nome').val();
//        var email = $('#nome').val();
//        var foneCelular = $('#nome').val();
//        var reserva = $('#nome').val();
        
//        $.getJSON("/Home/EnviarReserva", { nome: nome, email: email, foneCelular: foneCelular,  reserva: reserva, mensagem: mensagem }, function (data) {
//            $('#mensagemErro').append(data.Mensagem);
//        });

//    });

//}

function avaliacoes() {

    $.getJSON("/Home/ObterAvaliacoes/", {}, function (data) {
        $('.name').append(data[0].Hospede);
        $('.quote').append('  <span>“</span> ' + data[0].Avaliacao + ' <span></span>');
        $('#footer .testimonials .info').append(data[0].CidadePais);
    });
}

$(function() {

    //calendario();

    //reservar();

    contact();

    $('#email').blur(function(e) {

        e.preventDefault();

        $('#mensagemErro').empty();

        if (!isValidEmail($('#email').val())) {
            $('#mensagemErro').append('Email inválido');
            $('#email').val('');

        }

    });

    $('#cep').blur(function (e) {

        e.preventDefault();

        $('#endereco').val('');

        $.getJSON("http://cep.republicavirtual.com.br/web_cep.php?cep=" + $('#cep').val() + "&formato=json", {}, function (data) {
            
            if (data.resultado_txt == 'sucesso - cep completo') {
                $('#endereco').val(data.tipo_logradouro + ' ' + data.logradouro);
            }
        });
    });
});