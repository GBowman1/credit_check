card_number = "5541808923795240"
bad_card = "5541801923795240"
class CreditCheck
    def initialize(card_number_string, limit_integer)
        @card_number_string = card_number
        @limit_integer = limit
    end

    def card_number(card_number_string)
        card_number_string.to_i
    end

    def limit

    end

    def last_four
    end

    def is_valid(card_number)
        valid_check = card_number.chars
                                 .map(&:to_i) # change string to array, then method chain the create new array as integers
                                 .reverse  # reverse to start from right most digit so we can double from there every other
                                 .map.with_index { |x, i| i.odd? ? x * 2 : x } # map with index allows us to access whats in the array and its index. the i odd checks if index is odd then multiplies that item in the array. array starts @ 0 so every other index is odd.
                                 .map { |x| x > 9 ? x - 9 : x } # This checks each element of the array. If any element is greater than 9, it subtracts 9 from it. same as adding up
                                 .inject(0, :+) % 10 == 0
                                # .inject(0, :+) adds up items in array
                                # % 10 == 0 checks if divisble by 10
    
    end
    
end


 
    
  
puts is_card_valid(card_number)
puts is_card_valid(bad_card)
