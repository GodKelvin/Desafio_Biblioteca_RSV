class Livro < ApplicationRecord
  belongs_to :editora
  has_many :exemplares
  has_many :autor_livros
  has_many :autores, through: :autor_livros
end
