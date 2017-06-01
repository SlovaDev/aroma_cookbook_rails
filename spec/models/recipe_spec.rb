require 'rails_helper'

RSpec.describe Recipe, type: :model do

  it { should belong_to(:user) }
  it { should belong_to(:cuisine) }
  it { should have_many(:ingredients) }
  it { should have_many(:directions) }
  it { should have_many(:entries) }

end
