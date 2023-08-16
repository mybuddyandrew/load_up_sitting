require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "should create booking" do
    visit new_booking_url

    fill_in "First name", with: @booking.first_name
    fill_in "Last name", with: @booking.last_name
    fill_in "Animal name", with: @booking.animal_name
    select "Cat", from: "Animal type"
    select "4", from: "Hours requested"
    fill_in "Date of service", with: @booking.date_of_service
    click_on "Create Booking"

    assert_text "Booking was successfully created"
  end

  test "should not create booking with invalid data" do
    visit new_booking_url

    # Leaving required fields blank
    fill_in "First name", with: ""
    click_on "Create Booking"

    # Check for error messages
    assert_text "First name can't be blank"
  end
end
