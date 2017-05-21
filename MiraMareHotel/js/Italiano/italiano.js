$(function () {
    app.inicieAplicacao();
});


var app = {};
app.inicieAplicacao = function () {
    app.registraEventos();
};


app.registraEventos = function () {
    $("#enviar").click(app.enviaEmailFooter);
    $('#email').blur(app.validaEmail);
    $("#Commento").attr('placeholder', 'Lasciate i vostri commenti ...');
    $("#contatoSubmit").click(app.enviaEmailContato);
};


app.enviaEmailFooter = function (e) {
    e.preventDefault();
    
    $('#mensagemContato').empty();
    var nome = $('#nome').val();
    var email = $('#email').val();
    var mensagem = $('#mensagem').val();

    if (nome == '') {
        $('#mensagemContato').append("Inserire il suo nome");
    } else if (email == '') {
        $('#mensagemContato').append("Inserire il suo e-mail");
    } else if (mensagem == '') {
        $('#mensagemContato').append("Inserire il suo messaggio");
    } else {

        $.getJSON("/Contato/EnviarEmailContatoFooter", { nome: nome, email: email, mensagem: mensagem, idioma: 'italiano' }, function (data) {
            $('#mensagemContato').append(data.Mensagem);
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
        $('#mensagemContato').append("Inserire il suo nome");
    } else if (email == '') {
        $('#mensagemContato').append("Inserire il suo e-mail");
    } else if (mensagem == '') {
        $('#mensagemContato').append("Inserire il suo messaggio");
    } else {

        $.getJSON("/Contato/EnviarEmailContato", { nome: nome, email: email, telefone: telefone, mensagem: mensagem, idioma: 'italiano' }, function (data) {
            $('#mensagemContato').append(data.Mensagem);
        });
    }
};


app.validaEmail= function (e){
    
    $('#mensagemContato').empty();

    if (!isValidEmail($('#email').val())) {
        $('#mensagemContato').append('Email non valida');
        $('#email').val('');

    }
};



function isValidEmail(email) {
    return /^[a-z0-9]+([-._][a-z0-9]+)*@([a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,4}$/.test(email)
        && /^(?=.{1,64}@.{4,64}$)(?=.{6,100}$).*/.test(email);
}
