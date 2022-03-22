class PrescribedMedicine < ApplicationRecord
  belongs_to :prescription, optional: true
  belongs_to :medicines

  def total_amount
    self.quantity * Medicine.find(self.medicine_id).cost
  end
end
