require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new_restaurant_reservation" do
    get reservations_new_restaurant_reservation_url
    assert_response :success
  end

  test "should get edit_restaurant_reservation" do
    get reservations_edit_restaurant_reservation_url
    assert_response :success
  end

  test "should get restaurant_reservation" do
    get reservations_restaurant_reservation_url
    assert_response :success
  end

  test "should get restaurant_reservations" do
    get reservations_restaurant_reservations_url
    assert_response :success
  end

end
