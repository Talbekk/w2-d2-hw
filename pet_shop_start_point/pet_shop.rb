class PetShop

  attr_reader :name, :cash, :pets_sold

  def initialize(name, pets, cash)
    @name = name
    @pets = pets
    @cash = cash
    @pets_sold = 0
  end

def total_cash()
  return @cash
end

def pets_sold()
  return @pets_sold
end

def stock_count()
  return @pets.length
end

def increase_pets_sold()
   @pets_sold += 1
end

def increase_total_cash(cash)
  @cash += cash
end

def add_pet(pet)
  @pets.push(pet)
end

def remove_pet(pet)
  @pets.delete(pet)
end

def find_pet_by_name(name)
  for pet in @pets
    if (pet.name == name)
      return pet
    end
  end
  return nil
end

#integration test
#break things into smaller parts
def sell_pet_to_customer(name, customer)
  pet = find_pet_by_name(name)
  customer.add_pet(pet)
  remove_pet(pet)
  increase_pets_sold()
  increase_total_cash(pet.price)
end


end
