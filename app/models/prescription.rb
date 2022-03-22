class Prescription < ApplicationRecord
  belongs_to :doctor

  has_many :prescribed_medicines, dependent: :destroy
  accepts_nested_attributes_for :prescribed_medicines, allow_destroy: true
end
