Dado('que estou na página inicial') do
    @busca_page = Busca.new
    @busca_page.load
end

Quando('insiro o Código B3 no campo de busca') do
  @busca_page.busca_b3()
end

Quando('insiro o código ISIN no campo de busca') do
  @busca_page.busca_isin()
end

Quando('insiro o nome do Emissor no campo de busca') do
  @busca_page.busca_emissor()   
end

Quando('insiro o nome do Agente no campo de busca') do
  @busca_page.busca_agente() 
end

Quando('insiro o CNPJ no campo de busca') do
  @busca_page.busca_cnpj()
end

Então ('encontro o ativo pelo Código B3') do
  expect(@busca_page.busca_sucedida).to have_content("Debêntures (1)")
end

Então ('encontro o ativo pelo ISIN') do
  expect(@busca_page.busca_sucedida).to have_content("Debêntures (1)")
end

Então ('encontro o ativo pelo nome do Emissor') do
  expect(@busca_page.busca_sucedida).to have_content("Debêntures (1)")   
end

Então ('encontro o ativo pelo nome do Agente') do
  expect(@busca_page.busca_sucedida).to have_content("Debêntures (574)")   
end

Então ('encontro o ativo pelo CNPJ') do
  expect(@busca_page.busca_sucedida).to have_content("Debêntures (1)")  
end
