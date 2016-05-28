
require 'prime'

# Create a function named `divisors` that takes an integer and returns an array
# with all of the integer's divisors(except for 1 and the number itself).
# If the number is prime return the string '(integer) is prime'.

def divisors(n)
  n.prime? ? "#{n} is prime" : (2...n).select {|divisor| n % divisor == 0 }
end

divisors(12)   # => [2, 3, 4, 6]
divisors(25)   # => [5]
divisors(13)   # => '13 is a prime'
