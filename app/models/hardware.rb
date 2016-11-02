class Hardware < ApplicationRecord
  belongs_to :type, class_name: 'EquipmentType', foreign_key: :equipment_type_id

  has_one :stock

  validates :type, presence: true

  def to_s
    "#{brand} - #{model} (#{type})"
  end
end
