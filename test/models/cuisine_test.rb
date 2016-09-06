require 'test_helper'

class CuisineTest < ActiveSupport::TestCase
  setup do
    @cuisine = build(:cuisine)
  end

  test "should be invalid without a name" do
    @cuisine.name = nil
    assert_equal false, @cuisine.valid?
  end

end
