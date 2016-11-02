class AddEquipmentTypeToHadwares < ActiveRecord::Migration[5.0]
  def change
    add_reference :hardwares, :equipment_type, foreign_key: true
  end
end
