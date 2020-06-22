require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  organize_collection_by_symbol(:item,collection,name)[0]


end

def consolidate_cart(cart)

    
  cart.map do |element|
    element[:count] = organize_collection_by_symbol(:item,cart,element[:item]).count {|i| i[:item] == element[:item]}
    element
  
    
  
  
  end
  
  end

def organize_collection_by_symbol(symbol,collection,search_value)
  collection.filter {|i| i[symbol]==search_value}
end  

