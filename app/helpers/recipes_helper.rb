module RecipesHelper
  def cuisine_categories
    I18n.t(:cuisines).collect { |key, value| [ value, key ] }
  end
end
