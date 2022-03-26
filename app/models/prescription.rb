class Prescription < ApplicationRecord
  belongs_to :doctor

  has_many :prescribed_medicines, dependent: :destroy
  accepts_nested_attributes_for :prescribed_medicines, allow_destroy: true

  validate :check_date
  validates :prescribed_medicines, presence: true

    def check_date
        if !self.date_prescribed.nil? && self.date_prescribed > Date.today
            errors.add(:date_prescribed, "should not be later than today")
        end
    end

end
