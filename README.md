---
layout: page
title: Credit Check
---

### Learning Goals
* break a problem into logical components
* implement appropriate Ruby syntax
* utilize methods and classes

Let's write a program that can detect mistakes in a credit card number.

## Background: Luhn Algorithm

The Luhn algorithm is a check-summing algorithm best known for checking the validity of credit card numbers.

You can checkout the full description on Wikipedia: http://en.wikipedia.org/wiki/Luhn_algorithm

### Description

(adapted from Wikipedia)

The formula verifies a number against its included check digit, which is usually appended to a partial account number to generate the full account number. This full account number must pass the following test:

* starting with the first digit, double the value of every other digit
* if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
* take the sum of all the digits
* if the sum is divisible by ten, the number is valid

### Example

#### Validating an Account Number

Using `5541808923795240` as our sample input:

```
Account number:        5    5    4    1    8    0    8    9    2    3    7    9    5    2    4    0
2x every other digit:  10   5    8    1    16   0    16   9    4    3    14   9    10   2    8    0
Summed digits over 10: 1    5    8    1    7    0    7    9    4    3    5    9    1    2    8    0
Results summed:        70
Divisible by 10?:      70 % 10 == 0
```

Since the summed results modulo 10 is zero, the account number is valid according to the algorithm.

## Assignment

### Iteration 1 - The Luhn Algorithm

Start with this template and save it as `credit_check.rb` in your `lib` directory:

```ruby
card_number = "4929735477250543"

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
```

#### Sample Data

If helpful, you can use the following sample data:

* *Valid*: 5541808923795240, 4024007136512380, 6011797668867828
* *Invalid*: 5541801923795240, 4024007106512380, 6011797668868728

### Iteration 2 - Github and Classes

* Create a repository on Github and push your algorithm to it. From here on, all your code should be hosted on Github.

* Create a class that responds to the following interaction pattern:

```ruby
credit_check = CreditCheck.new
=> #<CreditCheck:0x00007fe82d2a8a38>
credit_check.valid_number?(5541808923795240)
=> true
credit_check.valid_number?(5541801923795240)
=> false
credit_check.validation_ouput(5541808923795240)
=> "The number 5541808923795240 is valid"
credit_check.validation_ouput(5541801923795240)
=> "The number 5541801923795240 is invalid"
```

### Iteration 3 - Branching and Minitest

* Create a branch in your local git repo called `testing`

* Create a Minitest test that accurately covers the expected behavior of your CreditCheck class

* Push the branch up to your Github repository and merge the branch using a Pull Request

### Iteration 4 - Extensions

* Create a command line interface that allows the user to validate a number

* Add functionality to calculate the check sum digit.

* Can you make it work for American Express numbers? 342804633855673 is valid but 342801633855673 is invalid