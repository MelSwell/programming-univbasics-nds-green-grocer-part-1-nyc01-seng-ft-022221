require 'pry'
def find_item_by_name_in_collection(name, collection)
  result = nil
  collection.each do |food_item|
    food_item.each do |k, v|
      if food_item[k] == name
        result = food_item
      end
    end
  end
  result
end

def consolidate_cart(cart)
  consolidated_cart = cart.each_with_object([]) do |food_item, a|
    food_item.each do |k, v|
      binding.pry
      a << {k => v, k => v, k => v}
    end
  end
end


