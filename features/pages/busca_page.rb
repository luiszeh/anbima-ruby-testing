class Busca < SitePrism::Page

set_url '/'

element :input_busca, '.anbima-ui-input-search__text'
element :button_debentures, '#form-button-option-debentures'
element :detalhes_page, '#output__container--expressaoPapel'
element :button_detalhes, '#item-button-detalhe-0'
element :resultado_aalm11, '.display-bold'

def detalhes_ativo()
    button_detalhes.click
end

def buscar(param)
  input_busca.send_keys(param)
  button_debentures.click
  detalhes_ativo()
end

end