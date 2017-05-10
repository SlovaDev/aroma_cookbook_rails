class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :cuisine
  has_many :ingredients, dependent: :destroy, inverse_of: :recipe
  has_many :directions, dependent: :destroy, inverse_of: :recipe

  validates :name, 
            presence: true, 
            length: { maximum: 50 }

  accepts_nested_attributes_for :ingredients,
                                reject_if: :all_blank,
                                allow_destroy: true

  accepts_nested_attributes_for :directions,
                                reject_if: :all_blank,
                                allow_destroy: true
end
