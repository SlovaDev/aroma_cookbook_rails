module Generator
  extend ActiveSupport::Concern

  def self.random_image
    "http://placehold.it/250x250"
  end
end
