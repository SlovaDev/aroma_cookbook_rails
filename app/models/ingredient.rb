class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true
  after_initialize :init
  validates :item, 
              presence: true, 
              length: { maximum: 25 }

  def init
    self.quantity ||= 1
  end
end
