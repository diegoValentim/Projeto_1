Dado(/^que esteja no site ORANGEHRM$/) do
  visit('http://opensource.demo.orangehrmlive.com/')
end

Quando(/^Logar no site ORANGEHRM$/) do
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando(/^cadastrar novo empregado$/) do
  	click_link('menu_pim_viewPimModule') 
    click_link('menu_pim_addEmployee')
	fill_in('firstName', :with => 'joao')
  	fill_in('middleName', :with => 'silva')
  	fill_in('lastName', :with => 'sauro')
    check('chkLogin')
      fill_in('user_name', :with => 'diegosilva')
    select('Disabled', :from => 'status')
        attach_file('photofile', 'C:/Users/Inmetrics/exercicio_1/imagem.jpg')
  	click_button('btnSave')
end

Então(/^validar se cadastro efetuado ok$/) do
      assert_text('Personal Details')
end