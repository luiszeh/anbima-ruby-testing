Dado('que estou na página inicial') do
    @busca_page = Busca.new
    @busca_page.load
end

Quando('realizo a busca pelo Código B3') do
  @busca_page.busca_b3()
end

Quando('realizo a busca pelo Código ISIN') do
  @busca_page.busca_isin()
end

Quando('realizo a busca pelo nome do Emissor') do
  @busca_page.busca_emissor()   
end

Quando('realizo a busca pelo nome do Agente') do
  @busca_page.busca_agente() 
end

Quando('realizo a busca pelo CNPJ') do
  @busca_page.busca_cnpj()
end

Então ('encontro o ativo pelo Código B3 e acesso seus detalhes') do
  expect(@busca_page.detalhes_page).to have_content("Condições gerais da série")
end

Então ('encontro o ativo pelo ISIN e acesso seus detalhes') do
  expect(@busca_page.detalhes_page).to have_content("Condições gerais da série")
end

Então ('encontro o ativo pelo nome do Emissor e acesso seus detalhes') do
  expect(@busca_page.detalhes_page).to have_content("Condições gerais da série")   
end

Então ('encontro o ativo pelo nome do Agente e acesso seus detalhes') do
  expect(@busca_page.detalhes_page).to have_content("Condições gerais da série")   
end

Então ('encontro o ativo pelo CNPJ e acesso seus detalhes') do
  expect(@busca_page.detalhes_page).to have_content("Condições gerais da série")  
end