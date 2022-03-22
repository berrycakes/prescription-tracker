class Medicine < ApplicationRecord
    has_many :prescribed_medicines

    validates :brand_name, presence: true, allow_nil: true
    validates :generic_name, presence: true
    validates :dosage_form, presence: true
    validates :cost, presence: true, numericality: true
    validates :category, presence: true
    # before_save :downcase_fields
 
    # def downcase_fields
    #    self.brand_name.downcase!
    #    if !self.generic_name.nil? 
    #     self.generic_name.downcase!
    #    end
    # end

    def descriptive_name
        "#{self.generic_name.titleize} #{self.brand_name.titleize} #{self.dosage_form}"
    end
end

# active record callbacks
