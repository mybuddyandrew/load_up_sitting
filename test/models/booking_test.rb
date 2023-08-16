require "test_helper"

class BookingTest < ActiveSupport::TestCase
  test "price for dogs" do
    booking = Booking.create(first_name: 'John', last_name: 'Doe', animal_name: 'Ruby', animal_type: 'Dog', hours_requested: 2, date_of_service: '2023-08-16')
    assert_equal 40, booking.price
  end

  test "price for cats" do
    booking = Booking.create(first_name: 'Sarah', last_name: 'Doe', animal_name: 'Luna', animal_type: 'Cat', hours_requested: 6, date_of_service: '2023-08-16')
    assert_equal 50, booking.price
  end

  test "minimum hours for dogs" do
    booking = Booking.new(first_name: 'John', last_name: 'Doe', animal_name: 'Ruby', animal_type: 'Dog', hours_requested: 1, date_of_service: '2023-08-16')
    assert_not booking.save
    assert_equal ["must be between 2 and 8 hours"], booking.errors[:hours_requested]
  end

  test "maximum hours for dogs" do
    booking = Booking.new(first_name: 'John', last_name: 'Doe', animal_name: 'Ruby', animal_type: 'Dog', hours_requested: 9, date_of_service: '2023-08-16')
    assert_not booking.save
    assert_equal ["must be between 2 and 8 hours"], booking.errors[:hours_requested]
  end
end
