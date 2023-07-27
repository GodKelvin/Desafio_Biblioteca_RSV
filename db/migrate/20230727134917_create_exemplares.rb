class CreateExemplares < ActiveRecord::Migration[7.0]
  def change
    create_table :exemplares do |t|
      t.references :livro, foreign_key: true
      t.boolean :locado

      t.timestamps
    end
  end
end
