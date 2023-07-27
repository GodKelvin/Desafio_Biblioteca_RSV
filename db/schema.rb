# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_27_135126) do
  create_table "autor_livros", force: :cascade do |t|
    t.integer "autor_id"
    t.integer "livro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_autor_livros_on_autor_id"
    t.index ["livro_id"], name: "index_autor_livros_on_livro_id"
  end

  create_table "autores", force: :cascade do |t|
    t.string "nome", limit: 255, null: false
    t.date "data_nascimento", null: false
    t.string "pais", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome", limit: 200, null: false
    t.string "cpf", limit: 11, null: false
    t.string "telefone", limit: 13, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "editoras", force: :cascade do |t|
    t.string "nome", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emprestimos", force: :cascade do |t|
    t.date "emprestimo"
    t.date "devolucao"
    t.integer "exemplar_id"
    t.integer "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_emprestimos_on_cliente_id"
    t.index ["exemplar_id"], name: "index_emprestimos_on_exemplar_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "pais", limit: 50
    t.string "estado", limit: 50
    t.string "cidade", limit: 50
    t.string "bairro", limit: 50
    t.integer "numero"
    t.integer "cep"
    t.string "nome", limit: 50
    t.integer "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_enderecos_on_cliente_id"
  end

  create_table "exemplares", force: :cascade do |t|
    t.integer "livro_id"
    t.boolean "locado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["livro_id"], name: "index_exemplares_on_livro_id"
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo", limit: 200, null: false
    t.integer "editora_id"
    t.string "isbn", limit: 255, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["editora_id"], name: "index_livros_on_editora_id"
  end

  add_foreign_key "autor_livros", "autores"
  add_foreign_key "autor_livros", "livros"
  add_foreign_key "emprestimos", "clientes"
  add_foreign_key "emprestimos", "exemplares"
  add_foreign_key "enderecos", "clientes"
  add_foreign_key "exemplares", "livros"
  add_foreign_key "livros", "editoras"
end
