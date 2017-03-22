class Cuisine < ApplicationRecord
  include Generator
  has_many :recipes
  before_save :set_image

  def translated_cuisine_category
    I18n.t(cuisine_category, :scope => :cuisine_categories)
  end

  private

  def set_image
    self.image_url ||= Generator.random_image
  end
end
