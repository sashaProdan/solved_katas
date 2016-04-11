# It should remove all values from list `a`, which are present in list `b`

# array_diff([1, 2], [2]) == [2]

# If a value is present in `b`, all of its occurences must be removed from the other:

# array_diff([1, 2], [1]) == [2]


# def array_diff(a, b)
#   a.reject { |num| b.include? num }
# end

def array_diff(a, b)
  a - b
end


p array_diff([1, 2, 3, 1], [1])