class CreateAutorLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :autor_livros do |t|
      t.references :autor, foreign_key: true
      t.references :livro, foreign_key: true

      t.timestamps
    end
  end
end
