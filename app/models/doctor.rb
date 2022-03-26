class Doctor < ApplicationRecord
    has_many :prescriptions

    validates :first_name, presence:true, length: { in: 2..50 }
    validates :last_name, presence:true, length: { in: 2..50 }
    validates :license_number, presence:true, numericality: { only_integer: true }, length: { is: 6 }, uniqueness: true
    validates :specialization, length: { maximum: 50 }
    validates :clinic_name, length: { maximum: 50 }
    validates :clinic_address, length: { maximum: 100 }
    validates :contact, length: { maximum: 50 }

    def descriptive_name
        if self.specialization == ""
            "Dr. #{self.first_name.titleize} #{self.last_name.titleize}"
        else
            "Dr. #{self.first_name.titleize} #{self.last_name.titleize}, #{self.specialization}"
        end
    end

    def full_name
        "Dr. #{self.first_name.titleize} #{self.last_name.titleize}"
    end

    def name_title
        "#{self.first_name.titleize} #{self.last_name.titleize}, MD"
    end
end
