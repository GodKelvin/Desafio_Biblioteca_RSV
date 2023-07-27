class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nome, limit: 200, null: false
      t.string :cpf, limit: 11, null: false, unique: true
      t.string :telefone, limit: 13, null: false

      t.timestamps
    end
  end
end
