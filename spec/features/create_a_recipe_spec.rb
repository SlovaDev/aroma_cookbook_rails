require 'rails_helper'

feature 'User creates a recipe' do
  before :each do
    user = User.create( { email: "test@user.com", password: "password", password_confirmation: "password" } )
    login_as user
  end

  scenario 'can add a recipe' do
    visit new_recipe_path

    fill_in 'Recipe name', with: 'Test Recipe, Yum Yum'

    click_button 'Save'

    recipe = Recipe.last

    expect(page.current_path).to eq recipe_path(recipe.id)
  end
end
