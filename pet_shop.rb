def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, credit_or_deposit)
  total = (pet_shop[:admin][:total_cash] + credit_or_deposit)
  return total
end
