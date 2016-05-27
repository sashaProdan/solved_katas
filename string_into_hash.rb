
# Write a function that will take a string as input and return a hash.
# The string will be formatted as such. The key will always be a symbol
# and the value will always be an integer.

def str_to_hash(str)
  keys = str.scan(/[a-z]/).map(&:to_sym)
  values = str.scan(/[0-9]/).map(&:to_i)
  Hash[keys.zip values]
end


str_to_hash('a=1, b=2, c=3, d=4')