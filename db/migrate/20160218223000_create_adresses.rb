class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :street
      t.string :district
      t.integer :number
      t.string :state
      t.string :city

      t.timestamps null: false
    end
  end
end
