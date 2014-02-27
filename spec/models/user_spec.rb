require 'spec_helper'

describe User do
  describe "the attributes" do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end
    
    it "should exist on the User model" do
      @user.should respond_to(:first_name)
      @user.should respond_to(:first_name=)
      @user.should respond_to(:last_name)
      @user.should respond_to(:last_name=)
      @user.should respond_to(:last_name)
      @user.should respond_to(:last_name=)
      @user.should respond_to(:phone)
      @user.should respond_to(:address)
      @user.should respond_to(:city)
      @user.should respond_to(:state)
    end
    
    it "should be unique" do
      @user.save
      user2 = FactoryGirl.create(:user, :email=>'diff@example.com')
      user2.valid?.should be_false
      user2.errors[:last_name].should include("is already taken")
    end
    
    it "should be required" do
      @user.first_name=nil
      @user.valid?.should be_false
      @user.errors[:first_name].should include("can't be blank")
      @user.errors[:last_name].should include("can't be blank")
    end
  end
end