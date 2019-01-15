require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Lily Evans", username: "levans", email: "levans1@hogwarts.com", 
                    password: "secretpig", password_confirmation: "secretpig")
  end
  
  test "should be valid" do
    @user.valid?
  end
end
