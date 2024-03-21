class CreditCheck
    attr_reader :card_number, :limit

    def initialize(card_number, limit)
        @card_number = card_number
        @limit = limit
    end

    def last_four
        @card_number[-4, 4]
        # substring last 4 character by using negative index to go from right side.
    end

    def is_valid?
        luhn_valid?(card_number)
        # use our luhn method to determine if card number is valid
    end

    def luhn_valid?(card_number)
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

