require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Lily Evans", username: "levans", email: "levans1@hogwarts.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
end
