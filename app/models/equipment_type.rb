class EquipmentType < ApplicationRecord
  has_many :hardwares, dependent: :restrict_with_error

  delegate :to_s, to: :name
end
