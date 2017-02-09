class Cuisine < ApplicationRecord
  include Generator
  has_many :recipes
  before_save :set_image

  private

  def set_image
    self.image_url ||= Generator.random_image
  end
end
