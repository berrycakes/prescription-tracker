class Medicine < ApplicationRecord
    has_many :prescribed_medicines, dependent: :destroy

    validates :brand_name, length: { maximum: 50 }, allow_nil: true
    validates :generic_name, presence: true, length: { in: 2..50 }
    validates :dosage_form, length: { maximum: 50 }, allow_nil: true
    validates :cost, presence: true, numericality: true
    validates :category, presence: true
    before_save :default_favorite

    def default_favorite
        if self.is_favorite == nil
            self.is_favorite = true
        end
    end

    def descriptive_name
        "#{self.generic_name.titleize} #{self.brand_name.titleize} #{self.dosage_form}"
    end
end

# active record callbacks
