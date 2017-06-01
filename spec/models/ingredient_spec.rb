require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  it { should belong_to(:recipe) }
  it { should respond_to(:item) }
  it { should respond_to(:quantity) }
  it { should respond_to(:measure) }

end
