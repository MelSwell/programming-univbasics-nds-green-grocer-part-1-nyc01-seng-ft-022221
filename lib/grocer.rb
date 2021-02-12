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
  consolidated_cart = cart.each_with_object([{:item => nil, :price => nil, :clearance => nil, :count => nil}]) do |food_item, a|
    food_item.each do
      binding.pry
      a.push(food_item[:count] = 1)
    end
  end
end


