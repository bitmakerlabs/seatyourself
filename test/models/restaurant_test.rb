require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  setup do
    @restaurant = build(:restaurant)
  end

  test "is invalid without a name" do
    @restaurant.name = nil
    assert_equal false, @restaurant.valid?
  end

  test "is ivalid without an address" do
    @restaurant.address = nil
    assert_equal false, @restaurant.valid?
  end

  test "is invalid without a phone number" do
    @restaurant.phone_number = nil
    assert_equal false, @restaurant.valid?
  end

  test "is invalid without a picture" do
    @restaurant.picture = nil
    assert_equal false, @restaurant.valid?
  end

  test "is invalid without a description" do
    @restaurant.description = nil
    assert_equal false, @restaurant.valid?
  end

  test "is invalid without a cuisine" do
    @restaurant.cuisine = nil
    assert_equal false, @restaurant.valid?
  end

  test "cannot accept more people than its capacity" do
    assert_equal true @restaurant.current_space !=< 0
  end

  

end
