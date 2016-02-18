class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :cpnj
      t.string :phone
      t.references :adress, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
