
def valid_parentheses(str)
  str = str.chars.select {|char| char == "(" || char == ")"}.join 
  s = str.gsub(/\(\)/, '')
  while s.gsub!(/\(\)/, '') do; end
  s.empty?
end

p valid_parentheses( "()" )               # => true
p valid_parentheses( ")(()))" )           # => false
p valid_parentheses( "(" )                # => false
p valid_parentheses( "(())((()())())" )   # => true
p valid_parentheses("())(")             # => false
p valid_parentheses("hi(hi)()")           # => true# 