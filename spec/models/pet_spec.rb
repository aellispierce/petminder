require_relative '../spec_helper.rb'

describe Pet do
  it "has a valid factory" do
    FactoryGirl.create(:pet).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:pet, name: nil).should_not be_valid
  end
  it "is invalid without a breed" do
    FactoryGirl.build(:pet, breed: nil).should_not be_valid
  end
  it "is invalid without a user id" do
    FactoryGirl.build(:pet, user_id: nil).should_not be_valid
  end
end
