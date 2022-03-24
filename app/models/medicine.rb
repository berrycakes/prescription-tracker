class Medicine < ApplicationRecord
    has_many :prescribed_medicines

    validates :brand_name, presence: true, allow_nil: true
    validates :generic_name, presence: true
    validates :dosage_form, presence: true, allow_nil: true
    validates :cost, presence: true, numericality: true
    validates :category, presence: true

    def descriptive_name
        "#{self.generic_name.titleize} #{self.brand_name.titleize} #{self.dosage_form}"
    end
end

# active record callbacks
