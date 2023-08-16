class PricingEngine
  BASE_PRICE = 20
  DOG_CHARGE = 10
  CAT_CHARGE = 5

  def self.calculate(animal_type, hours_requested)
    additional_charge = animal_type == 'Dog' ? DOG_CHARGE : CAT_CHARGE
    BASE_PRICE + additional_charge * hours_requested
  end
end
