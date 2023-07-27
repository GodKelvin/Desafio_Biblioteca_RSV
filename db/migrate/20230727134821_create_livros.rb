class CreateLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :livros do |t|
      t.string :titulo, limit: 200, null: false
      t.references :editora, foreign_key: { to_table: :editoras }
      t.string :isbn, limit: 255, null: false, unique: true

      t.timestamps
    end
  end
end
