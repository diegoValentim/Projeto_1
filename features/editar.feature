#language: pt
#utf-8
	@editar
	Funcionalidade: editar cadastro existente na Lista de empregado <Employee List>
	Validar alteração de dados de empregado cadastrado

	Cenario: Alterar cadastro de empregado
		
		Dado que esteja no site ORANGEHRM
		Quando Logar no site ORANGEHRM
		Então Consultar empregado cadastrado
		Mas editar novo empregado
		E validar se alteração efetuado ok