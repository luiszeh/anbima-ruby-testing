Dado('que estou na página inicial') do
    @busca_page = Busca.new
    @busca_page.load
end

# -------------------------  Quando  ---------------------------- #

Quando('realizo a busca por {string}, utilizando a opção Debêntures') do |param|
  @busca_page.buscar(param)
end

Quando('acesso a página de detalhes') do
  @busca_page.click_detalhes()
end

# -------------------------  Então  ---------------------------- #

Então('visualizo o ativo {string} no resultado da busca') do |param2|
  expect(@busca_page.resultado_busca).to have_content(param2)
end

Então('visualizo o ativo selecionado') do
  expect(@busca_page.resultado_aalm11).to have_content('AALM11')
end