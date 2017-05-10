require 'rails_helper'

feature 'User can add a recipe to calendar' do
  before :each do
    user = User.create( { email: "test@user.com", password: "password", password_confirmation: "password" } )
    login_as user
  end

  scenario 'adding recipe to calendar' do
    recipe = Recipe.create( { name: "Test yummies", user_id: User.last, cuisine_id: 1, ingredients_attributes: [{ item: "Cookies", quantity: 5}], directions_attributes: [{ direction: "Eat the yummies!"}]})

    visit recipe_path(Recipe.last.id)

    click_button 'Add to Planner'

    click_button 'Monday'

    click_button 'Breakfast'

    expect(page.current_path).to eq planner_path

    expect(page.current_path).to have_content('Test yummies')
  end
end
