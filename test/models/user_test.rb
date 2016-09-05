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

  test "password and confirmation must match" do
    @user.password_confirmation = 'geoff'
    assert_equal false, @user.valid?
  end

  test "password must be secure" do
    @user.password, @user.password_confirmation = 'cat'
    assert_equal false, @user.valid?
  end

  test "secure passwords are valid" do
    @user.password, @user.password_confirmation = 'Sup3rs3cur3560'
    assert_equal true, @user.valid?
  end

  test "emails must be unique" do
    @user.save
    another_user = build(:user)
    assert_equal false, another_user.valid?
  end

end
