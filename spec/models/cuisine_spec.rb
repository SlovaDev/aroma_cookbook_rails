require 'rails_helper'

RSpec.describe Cuisine, type: :model do

    it { should have_many(:recipes) }

end
