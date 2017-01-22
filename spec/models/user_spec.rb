require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(email: 'test@email.com',
                            password: 'password',
                            password_confirmation: 'password') }

    it { should validate_presence_of(:email) }
    it { should have_many(:recipes) }
end
