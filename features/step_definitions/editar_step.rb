Então(/^Consultar empregado cadastrado$/) do
  	click_link('menu_pim_viewPimModule') 
  	 	fill_in('empsearch_employee_name_empName', :with => 'joao silva sauro')
  	click_button('searchBtn')
end

Então(/^editar novo empregado$/) do
  	click_on('joao silva')
	click_button('btnSave')
	fill_in('personal_txtEmpFirstName', :with => 'alterado')
	click_button('btnSave')
end

Então(/^validar se alteração efetuado ok$/) do
      assert_text('Successfully Saved')
end