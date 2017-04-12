Então(/^Consultar empregado cadastrado$/) do
  	find(:xpath, '//*[@id="menu_pim_viewPimModule"]').click
  	 	fill_in('empsearch_employee_name_empName', :with => 'diego valentim rocha')
  	click_button('searchBtn')
end

Então(/^editar novo empregado$/) do
  	find(:xpath, '//*[@id="resultTable"]/tbody/tr/td[3]/a').click
	find(:xpath, '//*[@id="btnSave"]').click
	fill_in('personal_txtEmpFirstName', :with => 'joao')
	find(:xpath, '//*[@id="btnSave"]').click
end

Então(/^validar se alteração efetuado ok$/) do
      assert_text('Successfully Saved')
end