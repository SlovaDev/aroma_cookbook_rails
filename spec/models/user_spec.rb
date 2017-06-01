require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of(:email) }
  it { should have_many(:recipes) }

  describe "entry_for(recipe)" do
    before do
      @recipe = Recipe.create( { name: "Yummies", user_id: User.last, cuisine_id: 1, ingredients_attributes: [{ item: "Cookies", quantity: 5}], directions_attributes: [{ direction: "Cook and eat the yummies!"}]})
    end

    it "returns nil if the user has not added any recipes to planner" do
      expect(user.entry_for(@recipe)).to be_nil
    end
  end
end
