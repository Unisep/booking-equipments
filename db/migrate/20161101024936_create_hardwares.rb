class CreateHardwares < ActiveRecord::Migration[5.0]
  def change
    create_table :hardwares do |t|
      t.string :model
      t.string :brand

      t.timestamps
    end
  end
end
