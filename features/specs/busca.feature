# language: pt

Funcionalidade: Busca

Eu como usuário da Anbima
Quero realizar uma pesquisa
Para encontrar um ativo do tipo Debêntures

Contexto:
  Dado que estou na página inicial

Cenário: Busca por Código B3
  Quando realizo a busca pelo Código B3
  Então encontro o ativo pelo Código B3 e acesso seus detalhes

Cenário: Busca por ISIN
  Quando realizo a busca pelo Código ISIN
  Então encontro o ativo pelo ISIN e acesso seus detalhes

Cenário: Busca por Emissor
  Quando realizo a busca pelo nome do Emissor
  Então encontro o ativo pelo nome do Emissor e acesso seus detalhes

Cenário: Busca por Agente
  Quando realizo a busca pelo nome do Agente
  Então encontro o ativo pelo nome do Agente e acesso seus detalhes

Cenário: Busca por CNPJ
  Quando realizo a busca pelo CNPJ
  Então encontro o ativo pelo CNPJ e acesso seus detalhes