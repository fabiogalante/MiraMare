$(function () {
    app.inicieAplicacao();
});

var app = {};
app.inicieAplicacao = function () {
    app.registraEventos();
    app.consultarAvaliacoes();
};

app.consultarAvaliacoes = function(e) {

    $.getJSON("Home/ObterAvaliacoes/", {}, function (data) {
        $('.name').append(data[0].Hospede);
        $('.quote').append('  <span>“</span> ' + data[0].Avaliacao + ' <span></span>');
        $('#footer .testimonials .info').append(data[0].CidadePais);
    });

};

app.registraEventos = function () {
    //Contato footer
    $("#enviar").click(app.enviaEmailFooter);
    $('#email').blur(app.validaEmail);
    $("#Comentario").attr('placeholder', 'Deixe seu comentário...');
    $("#contatoSubmit").click(app.enviaEmailContato);
};

app.enviaEmailFooter = function (e) {

    e.preventDefault();
    
    $('#mensagemErro').empty();
    var nome = $('#nome').val();
    var email = $('#email').val();
    var mensagem = $('#mensagem').val();

    if (nome == '') {
        $('#mensagemErro').append("- Informe seu nome");
    } else if (email == '') {
        $('#mensagemErro').append("- Informe seu email");
    } else if (mensagem == '') {
        $('#mensagemErro').append("- Digite sua mensagem");
    } else {

        $.getJSON("Contato/EnviarEmailContatoFooter", { nome: nome, email: email, mensagem: mensagem, idioma: 'portugues' }, function (data) {
            $('#mensagemErro').append(data.Mensagem);
        });
    }
};

app.enviaEmailContato = function (e) {
    e.preventDefault();
    $('#mensagemContato').empty();
    var nome = $('#nome').val();
    var email = $('#email').val();
    var telefone = $("#telefone").val();
    var mensagem = $('#mensagem').val();

    if (nome == '') {
        $('#mensagemContato').append("- Informe seu nome");
    } else if (email == '') {
        $('#mensagemContato').append("- Informe seu email");
    } else if (mensagem == '') {
        $('#mensagemContato').append("- Digite sua mensagem");
    } else {

        $.getJSON("Contato/EnviarEmailContato", { nome: nome, email: email, telefone: telefone, mensagem: mensagem, idioma: 'portugues' }, function (data) {
            $('#mensagemContato').append(data.Mensagem);
        });
    }
};

app.validaEmail= function (e){
    
    $('#mensagemErro').empty();
    if (!isValidEmail($('#email').val())) {
        $('#mensagemErro').append('E-mail inválido');
        $('#email').val('');
    }
};

function isValidEmail(email) {
    return /^[a-z0-9]+([-._][a-z0-9]+)*@([a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,4}$/.test(email)
        && /^(?=.{1,64}@.{4,64}$)(?=.{6,100}$).*/.test(email);
}
