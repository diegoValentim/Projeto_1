Dado(/^Acessar site do Google$/) do
       visit('https://www.google.com.br/')
end

Dado(/^preencher com texto Inmetrics$/) do                                     
   fill_in('lst-ib', :with => 'Inmetrics')
end                                                              
                                                                                                                                                                                                                         
Dado(/^Acessar o site Inmetrics$/) do                                          
   click_link('Inmetrics - Apaixonados por Eficiência')  
end                                                                            
                                                                               
Quando(/^Estiver no site da Inmetrics clicar na aba Quem Somos$/) do           
   find(:xpath, '//*[@id="menu-item-2960"]/a/span/span').click 
end                                                                            
                                                                               
Então(/^validar campo MAIS DE (\d+) ANOS DE ATUAÇÃO$/) do |arg1|               
    assert_text('MAIS DE 15 ANOS DE ATUAÇÃO')
end                                                                           