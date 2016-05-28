
# Complete the solution so that it returns a formatted string.
# The return value should equal "Value is 00005" where value is 
# a 5 digit padded number.

def solution(value)
  arr = value.to_s.split(//)
  arr.unshift('0') until arr.length == 5
  "Value is #{arr.map(&:to_i).join}"
end

solution(724)       # => "Value is 00724"