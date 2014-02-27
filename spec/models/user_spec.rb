require 'spec_helper'

describe User do
  it "should have a 'name' attribute" do
    user = User.new
    user.should respond_to(:name)
    user.should respond_to(:name=)
  end
end