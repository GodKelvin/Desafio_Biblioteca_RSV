class Autor < ApplicationRecord
  self.table_name = 'autores'
  has_many :autor_livros
  has_many :livros, through: :autor_livros
end
