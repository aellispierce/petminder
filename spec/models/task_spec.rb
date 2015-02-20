require_relative '../spec_helper.rb'

describe Task do
  it "has a valid factory" do
    FactoryGirl.create(:task).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:task, name: nil).should_not be_valid
  end
  it "is invalid without a descrition" do
    FactoryGirl.build(:task, description: nil).should_not be_valid
  end
  it "is invalid without a user " do
    FactoryGirl.build(:task, user: nil).should_not be_valid
  end
end
