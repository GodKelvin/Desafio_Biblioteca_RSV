# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# arquivo: seeds.rb

# Editoras
editoras_list = [
  { nome: 'Editora A' },
  { nome: 'Editora B' },
  { nome: 'Editora C' },
  { nome: 'Editora D' },
  { nome: 'Editora E' }
]
Editora.create(editoras_list)

# Autores
autores_list = [
  { nome: 'Autor 1', data_nascimento: '1990-01-01', pais: 'País 1' },
  { nome: 'Autor 2', data_nascimento: '1985-03-15', pais: 'País 2' },
  { nome: 'Autor 3', data_nascimento: '1980-06-20', pais: 'País 3' },
  { nome: 'Autor 4', data_nascimento: '1975-11-10', pais: 'País 1' },
  { nome: 'Autor 5', data_nascimento: '1995-09-25', pais: 'País 2' }
]
Autor.create(autores_list)

# Livros
livros_list = [
  { titulo: 'Livro 1', editora_id: 1, isbn: '1234567890123' },
  { titulo: 'Livro 2', editora_id: 2, isbn: '9876543210987' },
  { titulo: 'Livro 3', editora_id: 1, isbn: '4567890123456' },
  { titulo: 'Livro 4', editora_id: 3, isbn: '7890123456789' },
  { titulo: 'Livro 5', editora_id: 4, isbn: '5432167890123' }
]
Livro.create(livros_list)

# Exemplares
exemplares_list = [
  { livro_id: 1, locado: false },
  { livro_id: 1, locado: true },
  { livro_id: 2, locado: false },
  { livro_id: 3, locado: false },
  { livro_id: 4, locado: true }
]
Exemplar.create(exemplares_list)

# Clientes
clientes_list = [
  { nome: 'Cliente 1', cpf: '11111111111', telefone: '11111111111' },
  { nome: 'Cliente 2', cpf: '22222222222', telefone: '22222222222' },
  { nome: 'Cliente 3', cpf: '33333333333', telefone: '33333333333' },
  { nome: 'Cliente 4', cpf: '44444444444', telefone: '44444444444' },
  { nome: 'Cliente 5', cpf: '55555555555', telefone: '55555555555' }
]
Cliente.create(clientes_list)

# Enderecos
enderecos_list = [
  { pais: 'País 1', estado: 'Estado 1', cidade: 'Cidade 1', bairro: 'Bairro 1', numero: 123, cep: 12345, nome: 'Endereco 1', cliente_id: 1 },
  { pais: 'País 2', estado: 'Estado 2', cidade: 'Cidade 2', bairro: 'Bairro 2', numero: 456, cep: 54321, nome: 'Endereco 2', cliente_id: 2 },
  { pais: 'País 1', estado: 'Estado 1', cidade: 'Cidade 1', bairro: 'Bairro 3', numero: 789, cep: 98765, nome: 'Endereco 3', cliente_id: 3 },
  { pais: 'País 3', estado: 'Estado 3', cidade: 'Cidade 3', bairro: 'Bairro 4', numero: 101, cep: 12345, nome: 'Endereco 4', cliente_id: 4 },
  { pais: 'País 2', estado: 'Estado 2', cidade: 'Cidade 2', bairro: 'Bairro 5', numero: 112, cep: 54321, nome: 'Endereco 5', cliente_id: 5 }
]
Endereco.create(enderecos_list)

# Emprestimos
emprestimos_list = [
  { emprestimo: '2023-07-01', devolucao: '2023-07-15', exemplar_id: 1, cliente_id: 1 },
  { emprestimo: '2023-07-05', devolucao: '2023-07-20', exemplar_id: 2, cliente_id: 2 },
  { emprestimo: '2023-07-10', devolucao: '2023-07-25', exemplar_id: 3, cliente_id: 3 },
  { emprestimo: '2023-07-12', devolucao: '2023-07-28', exemplar_id: 4, cliente_id: 4 },
  { emprestimo: '2023-07-15', devolucao: '2023-07-30', exemplar_id: 5, cliente_id: 5 }
]
Emprestimo.create(emprestimos_list)

autor_livros_list = [
  { autor_id: 1, livro_id: 1 },
  { autor_id: 2, livro_id: 1 },
  { autor_id: 3, livro_id: 2 },
  { autor_id: 4, livro_id: 3 },
  { autor_id: 5, livro_id: 4 }
]
AutorLivro.create(autor_livros_list)
