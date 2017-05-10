module RecipesHelper
	
	CUISINES = [ 
                'appetizer', 'entree', 'dessert',
                'bread', 'soup', 'salad',
                'breakfast', 'drink', 'misc'
              ]

  def cuisine_categories
    CUISINES.each_with_index.map { |name, index| [ I18n.t("cuisines.#{name}"), index + 1 ] }
  end
end
