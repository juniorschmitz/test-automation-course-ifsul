# language: pt

Funcionalidade: ações no Google

@carregar_google
Cenário: Carregar a home page
  Dado que esteja na página inicial do Google
  Então o formulário de busca deve ser apresentado

@busca_no_google
Cenário: Realizar uma busca no google
  Dado que esteja na página inicial do Google
  Quando buscar por "batata"
  Então resultados devem ser apresentados

@acessar_resultado_busca
Cenário: Realizar uma busca no google
  Dado que esteja na página inicial do Google
  Quando buscar por "batata"
  E acessar o primeiro resultado
  Então deve apresentar o texto "Wikipedia" na página

@diversas_buscas_google
Esquema do Cenário: Realizar diversas buscas no google
  Dado que esteja na página inicial do Google
  Quando buscar por <query>
  Então resultados devem ser apresentados
    
  Exemplos:
    |  query    |
    | "carro"   |
    | "curso"   |
    | "ifsul"   |
    | "pelotas" |
    | "quindim" |