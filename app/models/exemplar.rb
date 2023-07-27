class Exemplar < ApplicationRecord
  self.table_name = 'exemplares'
  belongs_to :livro
end
