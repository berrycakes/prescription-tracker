class PrescribedMedicine < ApplicationRecord
  belongs_to :prescription, optional: true
  belongs_to :medicines, optional: true

  def total_amount
    self.quantity * Medicine.find(self.medicine_id).cost
  end
end
