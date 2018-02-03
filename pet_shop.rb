# Method to call and return the pet shop's name.
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

# Method to call and return the pet shop's total cash.
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

# Method to add or remove any cash from transactions undertaken by the shop.
def add_or_remove_cash(pet_shop, credit_or_deposit)
  (pet_shop[:admin][:total_cash] += credit_or_deposit)
end

# Method to call and return how many pets the shop has sold.
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

# Method to add however many pets have been sold to the total number for the
# shop.
def increase_pets_sold(pet_shop, number_sold)
  (pet_shop[:admin][:pets_sold] += number_sold)
end

# Method to call and return the pet shop's stock count (number of pets for
# sale).
def stock_count(pet_shop)
  return pet_shop[:pets].count
end

# Method to search for pets by breed and return those elements in an array.
def pets_by_breed(pet_shop, breed)
  pets_found = []
  for pet in pet_shop[:pets]
    pets_found.push(pet) if pet[:breed] == breed
  end
  return pets_found
end

# Method to search for a pet by name and return that pet if found, or return nil
# if nothing is found.
def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end
  return nil
end

# Method for removing a pet from the shops's stock by name.
def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if pet[:name] == name
  end
end

# Method to add a new pet to the shop's stock.
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

# Method to check how many pets a customer already has.
def customer_pet_count(customer)
  return customer[:pets].count
end

# Method to add a new pet to a customer's details.
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# Method to check if a customer can afford a new pet.
def customer_can_afford_pet(customer, new_pet)
  return true if customer[:cash] >= new_pet[:price]
  return false
end

# Incomplete method for the operation of selling a pet to a customer.
# One addition would be to remove the pet from the shop, another would be a new
# method to remove the cash from the customer as well.
def sell_pet_to_customer(pet_shop, pet, customer)
  if pet
    if customer_can_afford_pet(customer, pet)
      add_pet_to_customer(customer, pet)
      # remove_pet_by_name(pet[:name])
      increase_pets_sold(pet_shop, 1)
      add_or_remove_cash(pet_shop, pet[:price])
    end
  end
end
