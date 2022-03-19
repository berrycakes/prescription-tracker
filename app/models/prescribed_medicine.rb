class PrescribedMedicine < ApplicationRecord
  belongs_to :prescription
  belongs_to :medicine
end
