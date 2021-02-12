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
 consolidated_cart = []
 cart.each do |food_item|
  current_food_item = find_item_by_name_in_collection(food_item[:item], consolidated_cart)
  binding.pry
 end 
end


