require 'test_helper'

class PricingEngineTest < ActiveSupport::TestCase
  test "price for dogs" do
    assert_equal 60, PricingEngine.calculate('Dog', 4) # BASE_PRICE + (DOG_CHARGE * 4) = 20 + (10 * 4) = 60
  end

  test "price for cats" do
    assert_equal 40, PricingEngine.calculate('Cat', 4) # BASE_PRICE + (CAT_CHARGE * 4) = 20 + (5 * 4) = 40
  end

  test "minimum hours for dogs" do
    assert_equal 40, PricingEngine.calculate('Dog', 2) # BASE_PRICE + (DOG_CHARGE * 2) = 20 + (10 * 2) = 40
  end

  test "maximum hours for dogs" do
    assert_equal 100, PricingEngine.calculate('Dog', 8) # BASE_PRICE + (DOG_CHARGE * 8) = 20 + (10 * 8) = 100
  end
end
