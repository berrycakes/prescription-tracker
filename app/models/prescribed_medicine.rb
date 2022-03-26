class PrescribedMedicine < ApplicationRecord
  belongs_to :prescription, optional: true
  belongs_to :medicines, optional: true

  validates :medicine_id, presence: true
  validates :quantity, presence: true
  validates :note, length: { maximum: 250 }, allow_nil: true

  def total_amount
    self.quantity * Medicine.find(self.medicine_id).cost
  end
end
