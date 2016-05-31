
# You have to validate if a user input string is alphanumeric.
# The given string isn't nil, so you don't have to check that.
# The string has the following conditions to be alphanumeric:

#   - At least one character("" is not valid)
#   - Allowed characters are uppercase/lowercase latin letters and
#     digits from 0 to 9
#   - No whitespaces/ubderscore


def alphanumeric?(str)
  return false if str.empty? || (str.length == 1 && str[0] == ' ')
  match = (str.match /^[a-zA-Z\d]+$/)
  match != nil
end


alphanumeric?('')               # => false
alphanumeric?(" ")              # => false
alphanumeric?("hello world_")   # => false
alphanumeric?("HELLOworld123")  # => true