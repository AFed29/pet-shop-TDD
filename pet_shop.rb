def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, credit_or_deposit)
  pet_shop[:admin][:total_cash] = (pet_shop[:admin][:total_cash] + credit_or_deposit)
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_sold)
  pet_shop[:admin][:pets_sold] = (pet_shop[:admin][:pets_sold] + number_sold)
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  pets_found = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
       pets_found.push(pet)
     end
  end
  return pets_found
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil
    if customer_can_afford_pet(customer, pet)
      add_pet_to_customer(customer, pet)
      # remove_pet_by_name(pet[:name])
      increase_pets_sold(pet_shop, 1)
      add_or_remove_cash(pet_shop, pet[:price])
    end
  end
end
