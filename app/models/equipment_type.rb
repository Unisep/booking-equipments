class EquipmentType < ApplicationRecord
  delegate :to_s, to: :name
end
