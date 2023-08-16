class Booking < ApplicationRecord
  ANIMAL_TYPE_OPTIONS = ['Dog', 'Cat'].freeze
  HOURS_REQUESTED_OPTIONS = (2..8).to_a.freeze

  before_create :calculate_price

  validates :first_name, :last_name, :animal_name, :animal_type, :hours_requested, :date_of_service, presence: true
  validates :animal_type, inclusion: { in: ANIMAL_TYPE_OPTIONS, message: "must be either 'Dog' or 'Cat'" }
  validates :hours_requested, numericality: { greater_than_or_equal_to: 2, less_than_or_equal_to: 8, message: "must be between 2 and 8 hours" }

  private

  def calculate_price
    self.price = PricingEngine.calculate(animal_type, hours_requested)
  end
end
