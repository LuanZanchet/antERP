class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :client, index: true, foreign_key: true
      t.references :seller, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.float :total

      t.timestamps null: false
    end
  end
end
