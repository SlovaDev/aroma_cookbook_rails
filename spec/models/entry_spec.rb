require 'rails_helper'

RSpec.describe Entry, type: :model do

	it { should belong_to(:recipe) }
	
end