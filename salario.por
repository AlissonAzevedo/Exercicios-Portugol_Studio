programa
{
	
	funcao inicio()
	{
		
		real salarBruto, salLiq, pensao, PAT, plnSaude, desconto
		real INSS, baseCalc, IRRF, aliquota, deducao
		caracter pergPen, pergPat, pergAdic

		INSS = 0.0
		IRRF = 0.0
		aliquota = 0.0
		deducao = 0.0

		escreva("Informe seu salário bruto: ")
		leia(salarBruto)
	
		escreva("Possui alguma Pensão Alimentícia descontada diretamente da fonte?(S/N) ")
		leia(pergPen)
		se (pergPen == 'S' ou pergPen == 's')
		{
			escreva("Entre com o valor da pensão alimentícia(R$): ")
			leia(pensao)
		}
		senao
		{
			pensao = 0.00
		}
		
		escreva("Informe o valor do seu PAT(Programa de Alimentação do Trabalhador): ")
		leia(PAT)
		
		escreva("Possui algum plano de saúde diretamente descontado?(S/N) ")
		leia(pergPat)
		se (pergPat == 'S' ou pergPat == 's')
		{
			escreva("Informe o valor do plano de saúde(R$): ")
			leia(plnSaude)
		}
		senao
		{
			plnSaude = 0.00
		}
		
		escreva("Possui mais algum desconto adiconal?(S/N) ")
		leia(pergAdic)
		se (pergAdic == 'S' ou pergAdic == 's')
		{
			escreva("Informe o valor do desconto(R$): ")
			leia(desconto)
		}
		senao
		{
			desconto = 0.00
		}

		se (salarBruto <= 1830.29)
		{
			INSS = salarBruto * 8/100
		}
		se (salarBruto > 1830.29 e salarBruto <= 3050.52)
		{
			INSS = salarBruto * 9/100
		}
		se (salarBruto > 3050.52 e salarBruto <= 6101.06)
		{
			INSS = salarBruto * 11/100
		}
		se (salarBruto > 6101.06)
		{
			INSS = 671.12
		}

		baseCalc = salarBruto - INSS - pensao * 189.59
			
		se (baseCalc <= 1903.98)
		{
			aliquota = 0.00
			deducao = 0.00
			
		}
		se (baseCalc >= 1903.99 e salarBruto <= 2826.65)
		{
			aliquota = 7.5/100.0
			deducao = 142.80
			
		}
		se (baseCalc >= 2826.66 e salarBruto <= 3751.05)
		{
			aliquota = 15/100.0
			deducao = 354.80
			
		}
		se (baseCalc > 3751.06 e baseCalc <= 4664.68)
		{
			aliquota = 22.5/100.0
			deducao = 636.13
			
		}
		se (baseCalc > 4664.68)
		{
			aliquota = 27.5/100.0
			deducao = 869.36
		}
		IRRF = baseCalc * aliquota - deducao
		salLiq = salarBruto - (pensao + plnSaude + PAT + desconto + INSS + IRRF)

		escreva("\n\tSeu salário Liquído: R$ " + salLiq,
			  "\n\tValor Pago ao INSS: R$ " + INSS,
		       "\n\tValor Pago ao IRRF: R$ " + IRRF)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */