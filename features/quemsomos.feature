#language: pt
#utf-8

Funcionalidade: Quem Somos
	Validar texto na aba Quem somos do site da inmetrics

	Cenario: Validar Texto

		Dado Acessar site do Google
		Dado preencher com texto Inmetrics
		Mas Acessar o site Inmetrics
		Quando Estiver no site da Inmetrics clicar na aba Quem Somos
		Então validar campo MAIS DE 15 ANOS DE ATUAÇÃO
		E validar campo MAIS DE 15 ANOS DE ATUAÇÃO