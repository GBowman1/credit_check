card_number = "5541808923795240"

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
def is_card_valid(card_number)
    card_number.chars
                .map(&:to_i) # change string to array, then method chain the create new array as integers
                .reverse  # reverse to start from right most digit so we can double from there every other
                .map.with_index { |x, i| i.odd? ? x * 2 : x } # map with index allows us to access whats in the array and its index. the i odd checks if index is odd then multiplies that item in the array. array starts @ 0 so every other index is odd.

 
    
  
puts is_card_valid(card_number)
