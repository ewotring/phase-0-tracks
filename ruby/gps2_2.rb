# Method to create a list

# Method that creates a hash;

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Splits items into an array
  # Turn items into keys and respective quantity into value
  # print the list to the console
# output: hash

# Method to add an item to a list
# input: list, item name will be a key, and optional quantity will be the value (defaults to 1)
# steps: Takes an item to be added to the list and an optional quantity for that item
# inserts item into a key and quantity into value (1 if not entered)
# output: updated list

# Method to remove an item from the list
# input: Takes an item to be removed 
# steps: Sets condition that removes item from the list IF it equals the item to be removed
# output: Updated list

# Method to update the quantity of an item
# input: Takes a string and an integer
# steps: Find value by key and update value to inputted value
# output: Updated list

# Method to print a list and make it look pretty
# input: The list (hash)
# steps: Insert human readable text
# output: Updated list


def list_maker(items, value=1)
  list_hash = {}
  list_array = items.split(' ')
  list_array.each do |item|
  list_hash[item] = value
  end
  list_hash
end


def add_to_list(item, value=1, list_add)
  list_add[item] = value
  list_add
end

def rem_from_list(item, list_rem)
  list_rem=list_rem.delete_if {|key, value| key==item}
  list_rem
end

def change_value(item, quantity, list_new_qty)
  list_new_qty[item]=quantity
  list_new_qty
end

def pretty_hash(pretty_list)
  pretty_list.each{|key, value| puts "The quantity of #{key} is #{value}."}
end

p list_maker("carrots apples cereal pizza")
p add_to_list("cheese", list_maker("carrots apples cereal pizza"))
p rem_from_list("carrots", list_maker("carrots apples cereal pizza"))
p change_value("apples", 2, list_maker("carrots apples cereal pizza"))
p pretty_hash(list_maker("carrots apples cereal pizza"))

#splat
#defoult argument/ parameter values
#in method def, make argument optional or give it a default value