# language: pt

Funcionalidade: Busca

Eu como usuário da Anbima
Quero realizar uma pesquisa
Para encontrar um ativo do tipo Debêntures

Contexto:
  Dado que estou na página inicial

Cenário: Busca por Código B3
  Quando insiro o Código B3 no campo de busca
  Então encontro o ativo pelo Código B3

Cenário: Busca por ISIN
  Quando insiro o código ISIN no campo de busca
  Então encontro o ativo pelo ISIN

Cenário: Busca por Emissor
  Quando insiro o nome do Emissor no campo de busca
  Então encontro o ativo pelo nome do Emissor

Cenário: Busca por Agente
  Quando insiro o nome do Agente no campo de busca
  Então encontro o ativo pelo nome do Agente

Cenário: Busca por CNPJ
  Quando insiro o CNPJ no campo de busca
  Então encontro o ativo pelo CNPJ