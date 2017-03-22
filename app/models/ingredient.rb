class Ingredient < ApplicationRecord
  belongs_to :recipe
  after_initialize :init
  validates :item, :quantity, 
              presence: true, 
              length: { maximum: 25 }

  def init
    self.quantity ||= 1
  end
end
