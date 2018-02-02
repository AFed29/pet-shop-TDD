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

def increase_pets_sold(pet_shop, number_of_pets_sold)
  pet_shop[:admin][:pets_sold] = (pet_shop[:admin][:pets_sold] + number_of_pets_sold)
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed_to_be_found)
  pets_found = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed_to_be_found
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
