require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../pet.rb')
require_relative('../customer.rb')
# each require_relative done individually

class CustomerTest < MiniTest::Test

  def setup

    # set variables and such for the rest of your code.

    @new_pet = Pet.new("Blue", :cat, "British Shorthair", 500)
    # :cat is a special type of string.
    @customer = Customer.new( "Jack Jarvis", 1000)
end

def test_customer_has_name
  assert_equal("Jack Jarvis", @customer.name)
end

def test_customer_has_cash
  assert_equal(1000, @customer.cash)
end

def test_customer_pets_starts_empty
  assert_equal(0, @customer.pet_count())
  # this code can be reusable when adding pets and such.
end

def test_can_add_pet_to_customer
  @customer.add_pet(@new_pet)
    assert(1, @customer.pet_count())
  # keeps number of pets from outside world. Outside world doesn't need to know.
end

def test_can_get_total_pet_cost
  @customer.add_pet(@new_pet)
  @customer.add_pet(@new_pet)
  @customer.add_pet(@new_pet)
  #cmd+shift+d will duplicate line.
    assert_equal(1500, @customer.get_total_value_of_pets)
end






end
