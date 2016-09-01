require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = build(:user)
  end

  test "should be invalid without a first name" do
    @user.first_name = nil
    assert_equal false, @user.valid?
  end

  test "should be invalid without a last name" do
    @user.last_name = nil
    assert_equal false, @user.valid?
  end

  test "should be invalid without a password or password confirmation" do
    @user.password = nil
    @user.password_confirmation = nil
    assert_equal false, @user.valid?
  end

end
