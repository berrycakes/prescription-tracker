class Doctor < ApplicationRecord
    has_many :prescriptions

    def descriptive_name
        "Dr. #{self.first_name.titleize} #{self.last_name.titleize}, #{self.specialization}"
    end

    def full_name
        "Dr. #{self.first_name.titleize} #{self.last_name.titleize}"
    end
end
