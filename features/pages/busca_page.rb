class Busca < SitePrism::Page

set_url '/busca/debentures'

element :input_b3, '.anbima-ui-input-search-clean'
element :input_isin, '.anbima-ui-input-search-clean'
element :input_emissor, '.anbima-ui-input-search-clean'
element :input_agente, '.anbima-ui-input-search-clean'
element :input_cnpj, '.anbima-ui-input-search-clean'
element :busca_sucedida, '.title-normal'

def busca_b3()
    input_b3.send_keys("AALM11"), :return
end

def busca_isin()
    input_isin.send_keys("BRAALMDBS009"), :return
end

def busca_emissor()
    input_emissor.send_keys("AURA ALMAS MINERACAO S.A"), :return
end

def busca_agente()
    input_agente.send_keys("OLIVEIRA TRUST DTVM S/A"), :return
end

def busca_cnpj()
    input_cnpj.send_keys("08213823000107"), :return
end

end