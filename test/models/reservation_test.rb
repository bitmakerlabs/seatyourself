require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  setup do
    @reservation = build(:reservation)
  end

  test "should be unable to book at a full restaurant" do
    over_capacity = @reservation.restaurant.seats < @reservation.party_size
    assert_equal false, over_capacity
  end
end
