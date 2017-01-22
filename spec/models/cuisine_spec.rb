require 'rails_helper'

RSpec.describe Cuisine, type: :model do
  let(:cuisine) { Cuisine.create(name: 'Appetizer') }

    it { should have_many(:recipes) }

end
