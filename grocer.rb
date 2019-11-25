def find_item_by_name_in_collection(name, collection)
  index = 0
  while index < collection.length do
    return collection[index] if name == collection[index][:item]
    index += 1
  end
  nil
  # Implement me first!
  #
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  index = 0
  result = []

  while index < cart.count do
    item_name = cart[index][:item]
    sought_item = find_item_by_name_in_collection(item_name, result)
    if sought_item
      sought_item[:count] += 1
    else
      cart[index][:count] = 1
      result << cart[index]
  end
  result
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
