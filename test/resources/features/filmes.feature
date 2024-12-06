# language: pt

Funcionalidade: Gerenciamento de Filmes
  Cenario: Criar um novo filme
    Dado que eu estou na página de criação de filmes
    Quando eu preencho o formulário com os seguintes dados:
      | nomeFilme   | John Wick       |
      | genero      | Ação            |
      | nota        | 8.5             |
      | comentario  | Excelente filme |
      | corAvaliacao| Verde           |
    E eu submeto o formulário
    Entao eu devo ver a mensagem "Filme criado com sucesso!"
    E o filme "John Wick" deve estar listado na página de filmes

  Cenario: Buscar um filme por nome
    Dado que eu estou na página de busca de filmes
    Quando eu busco pelo nome "John Wick"
    Entao eu devo ver o filme "John Wick" na lista de resultados

  Cenario: Deletar um filme
    Dado que eu estou na página de filmes
    E o filme "John Wick" está listado
    Quando eu deleto o filme "John Wick"
    Entao eu devo ver a mensagem "Filme deletado com sucesso!"
    E o filme "John Wick" não deve estar listado na página de filmes