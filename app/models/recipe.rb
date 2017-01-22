class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :cuisine

  has_many :ingredients, dependent: :destroy
  has_many :directions, dependent: :destroy
  validates :name, presence: true


    accepts_nested_attributes_for :ingredients,
                                  # reject_if: :all_blank,
                                  allow_destroy: true

    accepts_nested_attributes_for :directions,
                                  # reject_if: :all_blank,
                                  allow_destroy: true
end
