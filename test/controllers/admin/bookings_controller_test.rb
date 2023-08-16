require "test_helper"

class Admin::BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get admin_bookings_url
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch admin_booking_url(@booking), params: { booking: { animal_name: 'Updated', animal_type: 'Cat', date_of_service: '2023-08-16', first_name: 'Updated', hours_requested: 4, last_name: 'Updated' } }
    assert_redirected_to admin_booking_url(@booking)
    @booking.reload
    assert_equal 'Updated', @booking.first_name
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete admin_booking_url(@booking)
    end
    assert_redirected_to admin_bookings_url
  end
end
