class Cliente < ApplicationRecord
  has_many :enderecos
  has_many :emprestimos
end
