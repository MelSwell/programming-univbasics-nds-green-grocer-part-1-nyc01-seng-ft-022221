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
 cart.each do |food_item|
   binding.pry
   food_item.merge({:count => nil})
 end
end


