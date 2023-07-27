class CreateAutores < ActiveRecord::Migration[7.0]
  def change
    create_table :autores do |t|
      t.string :nome, limit: 255, null: false
      t.date :data_nascimento, null: false
      t.string :pais, limit: 100

      t.timestamps
    end
  end
end
