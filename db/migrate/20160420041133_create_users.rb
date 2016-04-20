class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :email
      t.integer :telefone
      t.integer :matricula
      t.string :cpf

      t.timestamps null: false
    end
  end
end
