class Hardware < ApplicationRecord
  belongs_to :type, class_name: 'EquipmentType', foreign_key: :equipment_type_id
end
