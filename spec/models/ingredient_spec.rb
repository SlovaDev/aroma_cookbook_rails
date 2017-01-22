require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  let(:ingredient) { Ingredient.create({ item: "Apple", quantity: 2, measure: "cup" })}

  it { should belong_to(:recipe) }
  it { should respond_to(:item) }
  it { should respond_to(:quantity) }
  it { should respond_to(:measure) }
  
end
