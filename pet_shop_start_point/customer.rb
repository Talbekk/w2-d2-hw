class Customer
  attr_reader :name, :cash


  def initialize(name, cash)
    @name = name
    @cash = cash
    @pets = []
    #creates an empty array for every new customer
  end

def pet_count()
  return @pets.length()
end

def add_pet(pet)
  @pets.push(pet)
end

def get_total_value_of_pets()
  total = 0
  for pet in @pets
    total += pet.price # accesses the object 
  end
  return total
end

end
