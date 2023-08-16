require "application_system_test_case"

class Admin::BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "should get index and edit booking in admin" do
    visit admin_bookings_url

    assert_text @booking.first_name # Assuming this booking is in your fixtures

    within "div[id='#{dom_id(@booking)}']" do
      click_on 'Edit this booking' # Clicking on the edit link by its text
    end

    fill_in "First name", with: "Updated"
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    assert_text "Updated"
  end

  test "should not create booking with invalid data" do
    visit new_booking_url

    # Leaving required fields blank
    fill_in "First name", with: ""
    click_on "Create Booking"

    # Check for error messages
    assert_text "First name can't be blank"
  end

  test "should not create booking in admin with invalid data" do
    visit new_admin_booking_url

    # Leaving required fields blank
    fill_in "First name", with: ""
    click_on "Create Booking"

    # Check for error messages
    assert_text "First name can't be blank"
  end

  test "should not update booking in admin with invalid data" do
    visit edit_admin_booking_url(@booking)

    # Providing incorrect data
    fill_in "First name", with: ""
    click_on "Update Booking"

    # Check for error messages
    assert_text "First name can't be blank"
  end
end
