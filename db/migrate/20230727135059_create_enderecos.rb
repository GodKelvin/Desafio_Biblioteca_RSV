class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.string :pais, limit: 50
      t.string :estado, limit: 50
      t.string :cidade, limit: 50
      t.string :bairro, limit: 50
      t.integer :numero
      t.integer :cep
      t.string :nome, limit: 50
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
