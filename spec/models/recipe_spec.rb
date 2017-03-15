require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:user) { User.create(email: 'test@email.com', password: 'password', password_confirmation: 'password') }
  let(:cuisine) { Cuisine.create(name: 'Appetizer') }
  let(:recipe) { Recipe.create(  name: 'Bean Dip', cuisine_id: 1, user_id: 1) }

    it { should belong_to(:user) }
    it { should belong_to(:cuisine) }
    it { should have_many(:ingredients) }
    it { should have_many(:directions) }

end
