class CreateEmprestimos < ActiveRecord::Migration[7.0]
  def change
    create_table :emprestimos do |t|
      t.date :emprestimo
      t.date :devolucao
      t.references :exemplar, foreign_key: true
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
