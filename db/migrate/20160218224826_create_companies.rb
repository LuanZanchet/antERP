class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :cnpj
      t.string :phone
      t.string :branch
      t.references :adress, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
