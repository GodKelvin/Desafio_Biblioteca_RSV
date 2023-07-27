class Emprestimo < ApplicationRecord
  belongs_to :exemplar
  belongs_to :cliente
end
