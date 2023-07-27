class Autor < ApplicationRecord
  has_many :autor_livros
  has_many :livros, through: :autor_livros
end
