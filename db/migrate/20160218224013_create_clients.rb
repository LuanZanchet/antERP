class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :cpf
      t.float :salario
      t.string :RG
      t.references :adress, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
