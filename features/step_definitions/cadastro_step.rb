Dado(/^que esteja no site ORANGEHRM$/) do
  visit('http://opensource.demo.orangehrmlive.com/')
end

Quando(/^Logar no site ORANGEHRM$/) do
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando(/^cadastrar novo empregado$/) do
  	find(:xpath, '//*[@id="menu_pim_viewPimModule"]').click 
	find(:xpath, '//*[@id="menu_pim_addEmployee"]').click
	fill_in('firstName', :with => 'joao')
  	fill_in('middleName', :with => 'admin')
  	fill_in('lastName', :with => 'admin')
    check('chkLogin')
      fill_in('user_name', :with => 'diegoValentim')
    select('Disabled', :from => 'status')
        attach_file('photofile', 'C:/Users/Inmetrics/Downloads/mind_map_modelo_aprendizado.png')
  	click_button('btnSave')

end

Então(/^validar se cadastro efetuado ok$/) do
      assert_text('Personal Details')
end