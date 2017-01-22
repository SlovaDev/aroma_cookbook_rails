require 'rails_helper'

feature 'User creates a recipe' do
  before :each do
    @cuisine = Cuisine.first
    user = User.create( { email: "test@user.com", password: "password", password_confirmation: "password" } )
    login_as user
  end

  scenario 'they see the add recipe page' do
    visit new_cuisine_recipe_path(@cuisine)

    fill_in 'Recipe name', with: 'Test Recipe, Yum Yum'
    
    click_button 'Add Ingredient'
    click_button 'Save recipe'

    expect(page).to redirect_to cuisine_recipe_path(@cuisine.id, 1)
  end
end
