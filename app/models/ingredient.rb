class Ingredient < ApplicationRecord
  belongs_to :recipe
  after_initialize :init

  def init
    self.quantity ||= 1
    self.measure ||= 'unit'
  end
end
