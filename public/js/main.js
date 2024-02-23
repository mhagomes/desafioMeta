/******************************************************************************
 * Autor : Márcio Gomes
 * Última modificação :	11/01/2003
 *
 * Função que verifica se o campo informado é um numero decimal
 * 
 * Parâmetro : Valor
 * Retorno : Um boolenao true, caso o campo for numerico
 * Senão ele retorna false.
 *
 * Exemplo : onblur="isNumber(this.value)" 
 ************************************************************************************/
function isNumber(text){  
	alert('isNumber');
	 valor = parseFloat(text);  
	 if ((!isNaN(valor))==false){
		alert("Por favor, digite um numero valido.");
	 }  
	 return true;  
  }  



function mascaraMutuario(o,f){
//O = objeto F= nome da funcao abaixo   
	v_obj=o
	v_fun=f
	setTimeout('execmascara()',1)
}
 
function execmascara(){
	v_obj.value=v_fun(v_obj.value)
}
 
function cpfCnpj(v){
 
	//Remove tudo o que não é dígito
	v=v.replace(/\D/g,"")
 
	if (v.length <= 14) { //CPF
 
		//Coloca um ponto entre o terceiro e o quarto dígitos
		v=v.replace(/(\d{3})(\d)/,"$1.$2")
 
		//Coloca um ponto entre o terceiro e o quarto dígitos
		//de novo (para o segundo bloco de números)
		v=v.replace(/(\d{3})(\d)/,"$1.$2")
 
		//Coloca um hífen entre o terceiro e o quarto dígitos
		v=v.replace(/(\d{3})(\d{1,2})$/,"$1-$2")
 
	} else { //CNPJ
 
		//Coloca ponto entre o segundo e o terceiro dígitos
		v=v.replace(/^(\d{2})(\d)/,"$1.$2")
 
		//Coloca ponto entre o quinto e o sexto dígitos
		v=v.replace(/^(\d{2})\.(\d{3})(\d)/,"$1.$2.$3")
 
		//Coloca uma barra entre o oitavo e o nono dígitos
		v=v.replace(/\.(\d{3})(\d)/,".$1/$2")
 
		//Coloca um hífen depois do bloco de quatro dígitos
		v=v.replace(/(\d{4})(\d)/,"$1-$2")
 
	}
	
	return v
 
}
/// formatar Telefone

function formatarTelefone (keypress, objeto){
campo = eval (objeto);

// formatando telefone
separador1 = '(';
separador2 = ')';
separador3 = '-';
conjunto1 = 0;
conjunto2 = 3;
conjunto3 = 8;
if (campo.value.length == conjunto1){
campo.value = campo.value + separador1;
}
if (campo.value.length == conjunto2){
campo.value = campo.value + separador2;
}
if (campo.value.length == conjunto3){
campo.value = campo.value + separador3;
}



}
////



function toUpper(tci)
{
  var result="";
  /* Character Exists */
  var str = tci.value.split('');
  for(i=0; i<=str.length-1; i++)
  {
	  /* here update the Character within the LOOP */
		str[i]  = str[i].toUpperCase();
	  /* save the output to the resule variable which was set to a blank string in the begining */
	  result+=str[i];
  }
	/* and Finaly set the value of your textBox equall to the result variable */	
	tci.value = result;

}



/******************************************************************************
 * Autor : Márcio Gomes
 * Última modificação :	11/01/2003
 *
 * Função que verifica se algum campo de determinado tipo está em branco ou não
 * e retorna uma mensagem avisando que o campo precisa ser preenchido e seta o
 * focus para o campo que precisa ser preenchido. Para fazer um campo de 
 * determinado tipo não ser obrigatório insira a TAG , class="campoNaoObrigatorio".
 * 
 * Parâmetro : nomeForm(Objeto), o formulário em questão.
 * Retorno : Um boolenao true, caso todos os campo obrigatórios estejam 
 *           preenchidos. Senão ele retorna false.
 *
 * Exemplo : OnSubmit = "if(!obrigatorios(document.nomeForm)){ return false; }"
 ******************************************************************************/
 
  
 
function obrigatorios(nomeForm) {
	var i = 0;

	//A classe campoNaoObrigatorio representa que o campo não é obrigatório.
	while(i < nomeForm.length) {
		if (nomeForm[i].value == ""  && (nomeForm[i].className != "CampoNaoObrigatorio" && nomeForm[i].className != "CampoReadOnly")){
			alert("Campo obrigatório está em branco!");
			//alert(nomeForm[i].name);
			if (nomeForm[i].readonly==false){
			 alert(nomeForm[i].name);
			 nomeForm[i].focus();
			}
			return false;
		}
		i = i + 1;
	}
	return true;
}

/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	11/01/2003
 *
 *	Essa função somente deve ser usada com dados que garantam a ausência 
 *	dos caracteres usados na mascara de CPF, ou seja, somente numeros devcerão
 *	ser passados para o parametro "pValue".
 *
 * 
 ******************************************************************************/

function colocaMascaraCPF(pValue) {
	var i, strTemp, tam;

	strTemp="";
	tam = pValue.length
	for (i=tam;i>0;i--) {
		if (i==(tam-2)) {
			strTemp = pValue.substring(i-1,i) + "-" + strTemp;
		}else if (i==(tam-5)) {
			strTemp = pValue.substring(i-1,i) + "." + strTemp;
		}else if (i==(tam-8)) {
			strTemp = pValue.substring(i-1,i) + "." + strTemp;
		}else {
			strTemp = pValue.substring(i-1,i) + strTemp;
		}
	}
	return strTemp;
}

/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	11/01/2003			
 *
 *	Essa função somente deve ser usada com dados que garantam a ausência 
 *	dos caracteres usados na mascara de CNPJ, ou seja, somente numeros devcerão
 *	ser passados para o parametro "pValue".
 *
 * 
 ******************************************************************************/
function colocaMascaraCNPJ(pValue) {
	var i, strTemp, tam;

	strTemp="";
	tam = pValue.length
	for (i=tam;i>0;i--) {
		if (i==(tam-2)) {
			strTemp = pValue.substring(i-1,i) + "-" + strTemp;
		}else if (i==tam-6) { 
			strTemp = pValue.substring(i-1,i) + "/" + strTemp;
		}else if (i==(tam-9)) {
			strTemp = pValue.substring(i-1,i) + "." + strTemp;
		}else if (i==(tam-12)) {
			strTemp = pValue.substring(i-1,i) + "." + strTemp;
		}else {
			strTemp = pValue.substring(i-1,i) + strTemp;
		}
	}
	return strTemp;
}


/******************************************************************************
 * Autor : Marcio Gomes 
 * Última modificação :	10/01/2003
 *
 * Função que é utilizada na validação de CPF. O valor passado não possui 
 * caracteres especiais, vírgula, separadores ou ponto. São apenas números.
 * 
 * Parâmetro : cpf, String contendo o CPF a ser testado.
 * retorno : retorna TRUE caso a String passada é um CPF válido e exibe mensagem,
 *              FALSO caso contrário.
 *           
 ******************************************************************************/
function validaCPF(cpf){
	var fach = 1;
	var pdig = cpf.substring(0,1);
	var cdig;

	if (cpf == "") {
		return true;
	}
	
	if (cpf.length < 11) {
		return false;
	}

	for(i = 1; i < cpf.length ;i++){
		cdig = cpf.substring(i,i+1);
		if(pdig == cdig ){ fach=fach+1;
		}
	}
	
	if(fach == cpf.length){ return false; }

	x = 0;
	soma = 0;
	dig1 = 0;
	dig2 = 0;
	texto = "";
	cpf1="";
	len = cpf.length; x = len -1;
	// var cpf = "12345678909";
	for (var i=0; i <= len - 3; i++) {
		y = cpf.substring(i,i+1);
		soma = soma + ( y * x);
		x = x - 1;
		texto = texto + y;
	}
	dig1 = 11 - (soma % 11);
	if (dig1 == 10) dig1=0 ;
	if (dig1 == 11) dig1=0 ;
	cpf1 = cpf.substring(0,len - 2) + dig1 ;
	x = 11; soma=0;
	for (var i=0; i <= len - 2; i++) {
		soma = soma + (cpf1.substring(i,i+1) * x);
		x = x - 1;
	}
	dig2= 11 - (soma % 11);
	if (dig2 == 10) dig2=0;
	if (dig2 == 11) dig2=0;
	if ((dig1 + "" + dig2) == cpf.substring(len,len-2))
	{
		return true;
	}else{
		return false;
	}

}


/******************************************************************************
 * Autor : Márcio Gomes
 * Última modificação :	07/01/2003			Responsável : Autor
 *
 * Função que é utilizada na validação de CNPJ. O valor passado não possui 
 * caracteres especiais, vírgula, separadores ou ponto. São apenas números. E o
 * dígito verificador é um número idem do anterior.
 * 
 * Parâmetro : numero, Uma String que é utilizada para validação do CNPJ.
 *			   digito, Uma String que representa o digito verificador.
 * retorno : retorna TRUE caso a String passada é um CNPJ válido, FALSO caso
 *           contrário.
 ******************************************************************************/
function validaCNPJ(Numero,Digito) {
	var CGC = Numero;
	var peso1 = '543298765432';
	var peso2 = '654329876543';
	var soma1 = 0;
	var soma2 = 0;
	var digito1 = 0;
	var digito2 = 0;
	var total = 0;
	

	total = Numero.length + Digito.length;
	// Se o CNPJ for todo zero.
	if(parseInt(CGC) == 0) return false;
	if(Numero == "" && Digito == "") return true;
	// Para pergar a quantidade correta, pois o usuário pode ter preenchido
	// o CNPJ com 14 ou 15 números.
	if(total == 15)  CGC = Numero.substr(1,12);	

	if ((Numero.length < 12) || (Digito.length < 2)) return false;	

	for (i = 1; i < 12 - Numero.length+1; i++) {
		CGC = eval("'" + CGC + "'")
	}
	for (i = 1; i < CGC.length+1; i++) {
		soma1 += CGC.substring(i, i-1) * peso1.substring(i, i-1);
	} 
	soma1 %= 11;
	
	if (soma1  < 2) {
	   digito1 = 0;
	} else {
	   digito1 = 11 - soma1; 
	}
	
	for (i = 1; i < CGC.length+1; i++) {
		soma2 += CGC.substring(i, i-1) * peso2.substring(i, i-1);
	} 
	
	soma2 += digito1 * 2 
	soma2 %= 11;
	
	if (soma2  < 2) {
	   digito2 = 0;
	} else {
	   digito2 = 11 - soma2; 
	}
	
	if (eval("'" + digito1 + digito2 + "'") != Digito){
		return false;
	} else {
		return true;
	}
}

/******************************************************************************
 * Autor : MArcio Gomes
 * Última modificação :	07/01/2003			Responsável : Autor
 *
 * Função que é utilizada na formatação do CNPJ. A formatação é realizada 
 * inserindo-se um '.' nos terceiro e sétimo valores do campo; E uma '/' no décimo
 * primeiro valor do campo; E finalmente um '-' no décimo sexto valor do campo. 
 *
 * Parâmetro : objeto, campo a ser formatado.
 *
 * Exemplo : onKeyDown = "FormataCNPJ(this)"
 ******************************************************************************/
function FormataCNPJ(objeto) {
	var tecla, tamanho;

	tecla = event.keyCode;

	if (tecla != 8){
		tamanho = objeto.value.length;
		if(tamanho == 2) {
			objeto.value = objeto.value + '.';
		} else if (tamanho == 6) {
			objeto.value = objeto.value + '.';
		} else if (tamanho == 10) {
			objeto.value = objeto.value + '/';
		} else if (tamanho == 15) {
			objeto.value = objeto.value + '-';
		}
	}
}

/******************************************************************************
 * Autor : Marcio Gomes  (marcio.gomes@sefaz.pe.gov.br) 
 * Última modificação :18/02/2003			Responsável : Autor
 *
 * Função que é utilizada na verificação do ano, se é bissexto ou não.
 * 
 * Parâmetro : ano, Um valor que é utilizada para verificação do ano
 * retorno : retorna TRUE caso o ano seja bissexto, FALSO caso contrário.
 ******************************************************************************/
function anobissexto (ano) { 
	if (((ano % 4)==0) && ((ano % 100)!=0) || ((ano % 400)==0)) { 
		return (true);
	} else return (false) 
}


/******************************************************************************
 * Autor : Marcio Gomes (ctmhg@yahoo.com.br) 
 * Última modificação :	07/02/2001			Responsável : Autor
 *
 * Função que é utilizada na validação da data. A data passada deve estar num
 * formato com '/' para separar o dia , mês e o ano.
 * 
 * Parâmetro : objeto, campo do objeto que deve ser validado.
 * retorno : retorna TRUE caso a String passada uma Data válida, FALSO caso
 *           contrário e seta o focus no objeto e exibe uma mensagem de alerta.
 *
 * Exemplo : OnBlur="validaData(this)" ou OnSubmit="validaData(form.data)"
 ******************************************************************************/
function validaData(objeto) {
	var valor = objeto.value;
	var mValores = "312831303130313130313031"
	var retorno = false;
	var lastDate = 0

	if (valor == "") return true;
	if (valor.length < 10) retorno = false;
	if (valor.substr(6, 4) < 1800) {
		alert("O sistema não trabalha com ano inferior a 1800.")
		objeto.focus();
		objeto.select();
		return false;
	}

	dia  = parseInt(valor.substring(0,2),10)		// pega o dia
	mes  = parseInt(valor.substring(3,5),10)  		// pega o mês
	ano  = parseInt(valor.substring(6,10),10)		// pega o ano
	
	if (mes == 2){
		if (anobissexto(ano)) {
			lastDate = 29
		} else {
			lastDate = 28
		}
	} else {
		lastDate = mValores.substring((mes-1)*2, (mes-1)*2+2)
	}
	
	if (valor.length < 8){
		retorno = false
	} else if ((valor.substring(2,3) != "/" ) || (valor.substring(5,6) != "/") ) {
		retorno = false
	} else if ( (isNaN(dia)) || (isNaN(mes)) || ( isNaN(ano)) ) {
		retorno = false
	} else if ( (mes > 12) || (mes <= 0) ){
		retorno = false
	} else if ( (dia > lastDate) || (dia <=0) ){
		retorno = false
	} else if (valor.substring(6,10) < 4){
		retorno = false
	} else {		
		retorno = true
	}

	if (!retorno){
		objeto.focus();
		objeto.select();
		alert("Data Inválida!")
	}

	return retorno;
}



 /******************************************************************************
 * Autor : Márcio Gomes
 * Última modificação :	27/01/2003
 *
 * Função que é utilizada para verificar se o caracter digitado é número ou
 * não. Senão for número deve ser mostrada uma mensagem de alerta.
 *
 * Observação : Usado no evento , onkeypress = "EhNumero(event)"
 ******************************************************************************/
function EhNumero(evento){
	var codigo;
	codigo = evento.keyCode; 
	 
	
	//O Código 46 é correspondente ao ponto(.) usado para casas decimais.
	// 13 - <ENTER>
	// 46 - .
	// 44 - ,
	if (codigo == 44 || codigo == 45 || codigo == 13 || codigo ==46) {
		return true;
	}
	
	if(codigo < 48 || codigo > 57 || codigo != 46){
		alert("Esse campo só aceita valor numerico !");
		evento.keyCode = 0;
		return false;
	}
}




/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	07/01/2003
 *
 * Função que é utilizada na formatação do CPF. A formatação é realizada 
 * inserindo-se um '.' após terceiro e sexto valor do campo; E um '-' após o nono
 *  valor do campo. 
 *
 * Parâmetro : objeto, campo a ser formatado.
 *
 * Exemplo : onKeyDown = "FormataCPF(this)"
 ******************************************************************************/
function FormataCPF(objeto) {
	var tecla, tamanho;

	tecla = event.keyCode;

	if (tecla != 8){
		tamanho = objeto.value.length;
		if(tamanho == 3) {
			objeto.value = objeto.value + '.';
		} else if (tamanho == 7) {
			objeto.value = objeto.value + '.';
		} else if (tamanho == 11) {
			objeto.value = objeto.value + '-';
		}
	}
}

/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	07/01/2003			Responsável : Autor
 *
 * Função que é utilizada para retirar a formatação de um campo de CNPJ, ou seja
 * esta função retira os caracteres '-','.' e o '/', para ser gravado no BD.
 *
 * Parâmetro : objeto, campo a ser retirada a formatação.
 ******************************************************************************/
function LimpaFormatacaoCNPJ(objeto) {
	var novoCnpj;

	novoCnpj = objeto.value.replace(".","");
	novoCnpj = novoCnpj.replace(".","");
	novoCnpj = novoCnpj.replace("-","");
	novoCnpj = novoCnpj.replace("/","");

	return novoCnpj;
}
/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	07/01/2003
 *
 * Função que é utilizada para retirar a formatação de um campo de CPF, ou seja
 * esta função retira os caracteres '-','.' e o '/', para ser gravado no BD.
 *
 * Parâmetro : objeto, campo a ser limpo a formatação.
 *
 ******************************************************************************/
function LimpaFormatacaoCPF(objeto) {
		var wVrCPF;

		wVrCPF = objeto.value;
		wVrCPF = wVrCPF.replace( ".", "" );
		wVrCPF = wVrCPF.replace( ".", "" );
		wVrCPF = wVrCPF.replace( "-", "" );
		
		return wVrCPF;
}

/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :08/01/2003			Responsável : Autor
 *
 * Função que é utilizada na formatação do CEP. A formatação é realizada 
 * inserindo-se um '-' no sexto valor do campo.
 *
 * Parâmetro : objeto, campo do formulário que desejo formatar.
 *
 * Exemplo : onKeyDown="FormataCEP(this)"
 ******************************************************************************/
function FormataCEP(objeto){
	var tecla, tamanho;
	tecla = event.keyCode;

	if (tecla != 8){
		tamanho = objeto.value.length;
		if(tamanho == 5) {
			objeto.value = objeto.value + '-';
		}
	}
}
/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	08/01/2003			Responsável : Autor
 *
 * Função que é utilizada na VALIDAÇÃO do CEP. para testar se só foi digitado numeros
 *
 * Parâmetro : objeto, campo do formulário que desejo formatar.
 *
 * Exemplo : onBlur="ValidaCEP(this)"
 ******************************************************************************/
function ValidaCEP(objeto){
		valor = objeto.value;
		tamanho = objeto.value.length;
		if (tamanho==9)
		{
			Numanterior  = parseFloat(valor.substring(0,5))		// pega o anterior
			Numposterior  = parseFloat(valor.substring(6,9))  		// pega o posterior
			if ((isNaN(Numanterior)) || (isNaN(Numposterior))) {
				alert("Esse campo só aceita números!");
				objeto.focus();
				return false
			} 

		}else if (tamanho!=0) {
				alert("Esse campo não foi preenchido corretamente!");
				objeto.focus();
				return false

		
		}
}

/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	07/01/2003			Responsável : Autor
 * 
 * Função que é utilizada para retirar a formatação de um campo de CEP, ou seja
 * esta função retira o caracter '-', para ser gravado no BD.
 *
 * Parâmetro : objeto, campo a ser limpo a formatação
 ******************************************************************************/
function LimpaFormatacaoCEP(objeto) {
	var novoCep;	
	novoCep = objeto.value.replace("-","");
	return novoCep;
}



/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	07/01/2003
 *
 * Função que é utilizada para preencher com zeros à esquerda o campo do Cnpj no
 * formulário.
 *
 * Parâmetro : objeto, campo CNPJ.
 ******************************************************************************/
function PreencheCNPJ(objeto) {
	var  antigoCnpj, novoCnpj, sRetorno;

	if(objeto.value == "") return "";
	
	antigoCnpj = objeto.value;
	novoCnpj = objeto.value.replace(".","");
	novoCnpj = novoCnpj.replace(".","");
	novoCnpj = novoCnpj.replace("-","");
	novoCnpj = novoCnpj.replace("/","");

	if (novoCnpj.length < 15){
		while (novoCnpj.length < 15){
			novoCnpj = '0' + novoCnpj;
		}
		sRetorno =	novoCnpj.substring(0,3) + "." + novoCnpj.substring(3,6) + "." + novoCnpj.substring(6,9) + "/" + novoCnpj.substring(9,13) + "-" + novoCnpj.substring(13,15);
		return sRetorno;	
	}
	else
		return antigoCnpj;  
}



/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	11/01/2003			
 *
 * Essa funcao serve para validacao tanto de CNPJ como de CPF.
 * 	Função serve, tambem, para a formatação dos numeros referentes tanto
 * 	para o CNPJ como para o CPF.
 *
 * 
 ******************************************************************************/

function ValidaCNPJeCPF(pValue) {
	var lTam, numeroCNPJ, digitoCNPJ, strValida;
	var i = 0;
	var novoValida = "";

	strValida = pValue.value;
	lTam = strValida.length;

    alert('ok');
   
	// Esse loop server para a conversão do ponto em virgula para perfeito funcionamento 
	// no browser Netscape.
	while(i < lTam){
		if(strValida.charAt(i) == "."){
			novoValida = novoValida + ',';
		} else {
			novoValida = novoValida + strValida.charAt(i);
		}
		i = i + 1;
	}
	strValida = novoValida;
	
	//retira rodos os caracteres diferentes de mumero que serao 
	//utilizados para a formatacao.
	strValida = strValida.replace("-", "");
	strValida = strValida.replace(",", "");
	strValida = strValida.replace("/", "");
	strValida = strValida.replace(",", "");
	
	lTam = strValida.length;
	
	if (lTam<=11) {
		if (validaCPF(strValida)) {
			pValue.value = colocaMascaraCPF(strValida);
				return true;
		}else {
			alert("Numero inválido, favor digitar novamente 1");
			
			pvalue.value ='';
			pvalue.focus( );
			return false;
		}
	}else {
		//captura o digito do cnpj
				if (strValida.length==14)
				{
				numeroCNPJ = strValida.substring(0,strValida.length-2);
				  // if (numeroCNPJ.length==12) { numeroCNPJ = "0" + numeroCNPJ; }

				//alert(strValida.length);

				//alert(numeroCNPJ);
				}else{
				numeroCNPJ = strValida.substring(-2,strValida.length-2);

				}

		digitoCNPJ = strValida.substring(strValida.length-2,strValida.length);
		if (validaCNPJ(numeroCNPJ, digitoCNPJ)) {
			if (lTam==14) { strValida = strValida; }
			pValue.value = colocaMascaraCNPJ(strValida);
		}else {
			alert("Numero inválido, favor digitar novamente 2");
			
			pvalue.value ='';
			pvalue.focus();
			return false;
		}
	}
	return true;
}


/******************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	17/01/2003			Responsável : Autor
 *
 * Função que é utilizada na formatação de datas, está função acrescenta na data
 * o caracter para separar o dia, mes e ano com '/'.
 * 
 * Parâmetro : obj, objeto a ser formatado.			   
 *
 * Exemplo : OnKeyDown="FormataData(this)"
 ******************************************************************************/
function FormataData(objeto) {
	var tecla, tamanho;
	tecla = event.keyCode;
	 //alert(tecla);
	if (tecla != 8 && tecla != 111) {
		tamanho = objeto.value.length;
		if (tamanho == 2 || tamanho == 5) {

			
			objeto.value = objeto.value + "/";
		}
	}

}


/********************************************************************************
 * Autor : Marcio Gomes
 * Última modificação :	11/01/2003			Responsável : Autor
 * 
 * 
 * Verifica se um email é válido.
 * Parâmetro : objeto, O campo de Email - usar o this.
 *
 * retorno : retorna TRUE caso o campo seja um email válido, caso contrário
 *           retorna FALSE e seta o focus no campo de Email.
 *******************************************************************************/
function validaEmail(objeto) {
	var email = objeto.value;
	var s = new String(email);
	var retorno = true;

	// Se o email for vazio, retorne verdadeiro.
	if (email == "") return true;

	// { } ( ) < > [ ] | \ /
	if ((s.indexOf("{")>=0) || (s.indexOf("}")>=0) || (s.indexOf("(")>=0) || (s.indexOf(")")>=0) || (s.indexOf("<")>=0) || (s.indexOf(">")>=0) || (s.indexOf("[")>=0) || (s.indexOf("]")>=0) || (s.indexOf("|")>=0) || (s.indexOf("\"")>=0) || (s.indexOf("/")>=0))
		retorno = false;
	// & * $ % ? ! ^ ~ ` ' "
	if ((s.indexOf("&")>=0) || (s.indexOf("*")>=0) || (s.indexOf("$")>=0) || (s.indexOf("%")>=0) || (s.indexOf("?")>=0) || (s.indexOf("!")>=0) || (s.indexOf("^")>=0) || (s.indexOf("~")>=0) || (s.indexOf("`")>=0) || (s.indexOf("'")>=0) )
		retorno = false;
	// , ; : = #
	if ((s.indexOf(",")>=0) || (s.indexOf(";")>=0) || (s.indexOf(":")>=0) || (s.indexOf("=")>=0) || (s.indexOf("#")>=0) )
		retorno = false;
	// procura se existe apenas um @
	if ( (s.indexOf("@") < 0) || (s.indexOf("@") != s.lastIndexOf("@")) )
		retorno = false;
	// verifica se tem pelo menos um ponto após o @
	if (s.lastIndexOf(".") < s.indexOf("@"))
		retorno = false;
	// verifica se existe pelo menos um caracter antes do @
	if (s.substr(0,1) == '@')
		retorno = false;
	
	if (!retorno){
		objeto.focus();
		objeto.select();
		alert("Email Incorreto!");
	}
	
	return retorno;
}



 
  