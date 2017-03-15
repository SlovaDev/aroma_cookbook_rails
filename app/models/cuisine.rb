class Cuisine < ApplicationRecord
  include Generator
  has_many :recipes
  before_save :set_image

  def self.for_select
    Cuisine.all.map do |cuisine|
      [I18n.t("activerecord.model.cuisine.#{name}"), cuisine]
    end
  end

  private

  def set_image
    self.image_url ||= Generator.random_image
  end
end
