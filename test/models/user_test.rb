require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: "Example Usersame", email: "example@email.com")
  end
  
  test "should be valid" do

    assert @user.valid?
  end
end
