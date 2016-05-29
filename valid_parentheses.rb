
# Write a function called `validParentheses` that takes a string
# of parentheses, and determines if the order of the parentheses is valid.
# The method shoul return true if the string is valid, and false if
# it's invalid.
# All input strings will be nonempty, and will only consist of open
# parentheses '('and/or closed ones ')'


def valid_parentheses(str)
  str = str.chars.select {|char| char == "(" || char == ")"}.join 
  s = str.gsub(/\(\)/, '')
  while s.gsub!(/\(\)/, '') do; end
  s.empty?
end

valid_parentheses( "()" )               # => true
valid_parentheses( ")(()))" )           # => false
valid_parentheses( "(" )                # => false
valid_parentheses( "(())((()())())" )   # => true
valid_parentheses("())(")               # => false
valid_parentheses("hi(hi)()")           # => true# 