
# Create the function `prefill` that returns and array of `n` elements 
# that all have the same value `v`. See if you can do this without using a loop.
# You have to validate input:
#   - `v` can be anything(primitive or otherwise)
#   - if `v` is omitted, fill the array with `undefined`
#   - if `n` is 0, return an empty array
#   - if `n` is anything other than an integer or onteger-formatted
#     string (e.g. '123') that is >= 0, throw a TypeError

# When throwing a TypeError, the message should be `n is invalid`,
# where you replace `n` with the actual value passed to the function.


def prefill(n = 0, v = 'undefined')
    if (n.is_a?(String) && n == n.to_i.to_s) || n.is_a?(Integer) && n >= 0 
       Array.new(n.to_i, v)
    else
      raise TypeError, "#{n} is invalid" 
    end
end


prefill(3, 1)    # => [1, 1, 1]
prefill(2, 'abc') # => ['abc', 'abc']
prefill("1", 1)   # => [1]
prefill(3, prefill(2, '2d')) # => [['2d, '2d'], ['2d', '2d'], ['2d', '2d']]
prefill("xyz", 1)            # => throws TypeError with message 'xyz is invalid'
