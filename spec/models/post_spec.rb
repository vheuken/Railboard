require 'spec_helper'

describe Post do
  before(:each) do
    @valid_attributes = {
      :name => "Stan Smith",
      :email => "foo@bar.com",
      :subject => "THIS IS A SUBJECT",
      :comment => "This is a comment!"
    }  
  end
  
  it "should be invalid without a comment" do
    post = Post.new(@valid_attributes.except(:comment))
    post.should_not be_valid
  end
end
