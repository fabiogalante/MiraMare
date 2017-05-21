// JScript File


// Validação de CPF e CNPJ

function valida_CPFCNPJ(oSrc,args){

if (args.Value.length == 11){

valida_CPF(oSrc,args);

}else if(args.Value.length == 11){

valida_CNPJ(oSrc, args);

}else{

return args.IsValid = false;

}

}

//Validação de CPF

function valida_CPF(oSrc,args){

s = args.Value;

//args.isValid = (s >= 3);

//document.write(oSrc.Value + ',' + args.Value);

if (isNaN(s)) {

return args.IsValid = false;

}

var i;

var c = s.substr(0,9);

var dv = s.substr(9,2);

var d1 = 0;

for (i = 0; i < 9; i++) {

d1 += c.charAt(i)*(10-i);

}

if (d1 == 0){

return args.IsValid = false;

} 

d1 = 11 - (d1 % 11);

if (d1 > 9) d1 = 0; 

if (dv.charAt(0) != d1) {

return args.IsValid = false; 

}

d1 *= 2;

for (i = 0; i < 9; i++) {

d1 += c.charAt(i)*(11-i);

}

d1 = 11 - (d1 % 11);

if (d1 > 9) d1 = 0;

if (dv.charAt(1) != d1) {

return args.IsValid = false;

}

return args.IsValid = true;

} 

//Validação de CNPJ

function valida_CNPJ(oSrc, args){

s = args.Value;

if (isNaN(s)) {

return args.IsValid = false;

}

var i;

var c = s.substr(0,12);

var dv = s.substr(12,2);

var d1 = 0;

for (i = 0; i <12; i++){

d1 += c.charAt(11-i)*(2+(i % 8));

}

if (d1 == 0) 

return args.IsValid = false;

d1 = 11 - (d1 % 11);

if (d1 > 9) d1 = 0;

if (dv.charAt(0) != d1){

return args.IsValid = false;

}

d1 *= 2;

for (i = 0; i < 12; i++){

d1 += c.charAt(11-i)*(2+((i+1) % 8));

}

d1 = 11 - (d1 % 11);

if (d1 > 9) 

d1 = 0;

if (dv.charAt(1) != d1){

return args.IsValid = false;

}

return args.IsValid = true;

} 





function Mascaras(formato, objeto){


	if (window.event.keyCode >= 48 && window.event.keyCode <= 57){
		var campo = document.getElementById(objeto);
		
		if (formato == 'DATA'){
			separador = '/';
			conjunto1 = 2;
			conjunto2 = 5;
			if (campo.value.length == conjunto1)
				campo.value = campo.value + separador;

			if (campo.value.length == conjunto2)
				campo.value = campo.value + separador;
		}
		
		if (formato == 'HORA'){
			separador = ':';
			conjunto1 = 2;
			if (campo.value.length == conjunto1)
				campo.value = campo.value + separador;
		}
		
		if (formato == 'CEP'){
			separador = '-';
			conjunto1 = 5;
			if (campo.value.length == conjunto1)
				campo.value = campo.value + separador;
		}
		
		if (formato == 'CPF'){
			separador = '.';
			separador1 = '-';
			conjunto1 = 3;
			conjunto2 = 7;
			conjunto3 = 11;
			if (campo.value.length == conjunto1)
				campo.value = campo.value + separador;

			if (campo.value.length == conjunto2)
				campo.value = campo.value + separador;
				
			if (campo.value.length == conjunto3)
				campo.value = campo.value + separador1;
		}		
	}else
		window.event.keyCode = 0;
}




