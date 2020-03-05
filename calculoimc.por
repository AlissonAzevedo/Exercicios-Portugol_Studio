programa
{
	
	funcao inicio()
	{
		real peso, altura, imc
		real idealMin, idealMax
		escreva("Qual seu Peso Em Kg: ")
		leia(peso)
		escreva("\nInforme sua Altura em metros: ")
		leia(altura)
		
		imc = (peso / (altura*altura))
		idealMin = (18.5 * (altura * altura))
		idealMax = (25.0 * (altura * altura))
		
		escreva("\n\tSeu IMC é " + imc)
		se (imc < 15)
		{
			escreva("\n\tExtremamente abaixo do peso! ")
		}
		se (imc >= 15 e imc < 16) 
		{
			escreva("\n\tGravemente abaixo do peso")
		}
		se (imc >= 16 e imc < 18.5) 
		{
			escreva("\n\tAbaixo do peso ideal")	
		}
		se (imc >= 18.5 e imc < 25) 
		{
			escreva("\n\tFaixa de peso ideal")
		}
		se (imc >= 25 e imc < 30) 
		{
			escreva("\n\tSobrepeso")
		}
		se (imc >= 30 e imc < 35) 
		{
			escreva("\n\tObesidade grau 1 ")
		}
		se (imc >= 35 e imc < 40) 
		{
			escreva("\n\tObesidade grau 2 (GRAVE) ")
		}
		se (imc >= 40 ) 
		{
			escreva("\n\tObesidade grau 3 (MÓRBIDA) ")
		}
		
		escreva("\n\tO peso ideal para você é entre ", idealMin, "Kg e " , idealMax, "Kg")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 228; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */