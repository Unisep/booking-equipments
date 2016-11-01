class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.decimal :quantity
      t.references :hardware, foreign_key: true

      t.timestamps
    end
  end
end
