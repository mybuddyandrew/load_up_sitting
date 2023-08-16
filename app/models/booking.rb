class Booking < ApplicationRecord
  ANIMAL_TYPE_OPTIONS = ['Dog', 'Cat'].freeze
  HOURS_REQUESTED_OPTIONS = (2..8).to_a.freeze

  before_create :calculate_price

  validates :first_name, :last_name, :animal_name, :animal_type, :hours_requested, :date_of_service, presence: true
  validates :animal_type, inclusion: { in: ANIMAL_TYPE_OPTIONS }
  validates :hours_requested, inclusion: { in: HOURS_REQUESTED_OPTIONS }

  private

  def calculate_price
    self.price = PricingEngine.calculate(animal_type, hours_requested)
  end
end
