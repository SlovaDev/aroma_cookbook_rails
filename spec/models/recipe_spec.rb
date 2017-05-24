require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:user) 	{ User.create(email: 'test@email.com', password: 'password', password_confirmation: 'password') }
  let(:cuisine) { Cuisine.create(name: 'Appetizer') }
  let(:recipe) 	{ Recipe.create(  name: 'Bean Dip', cuisine_id: 1, user_id: 1) }


    it { should belong_to(:user) }
    it { should belong_to(:cuisine) }
    it { should have_many(:ingredients) }
    it { should have_many(:directions) }
    it { should have_many(:entries).through(:enterings)}

  describe "adding recipes to calendar" do
    before do
      let(:calendar) { Calendar.create(self, date, block) }
    end

    it "adds " do
      favorite = user.favorites.create(post: post)
      expect(FavoriteMailer).to receive(:new_comment).with(user, post, @another_comment).and_return(double(deliver_now: true))

      @another_comment.save
    end
	end
end
