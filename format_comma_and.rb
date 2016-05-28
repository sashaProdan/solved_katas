
# Sometimes you have an array of strings and you would like it to be 
# displayed as a nicely formatted list, in which the items are separated
# by commas with an 'and' before the last item.

# eg: 'Protons, neutrons and electrons'

# Take an array of strings and return a single nicely formatted string with
# commas and the 'and' in their correct places.


def format_comma_and(array)
  return array.join if array.length <= 1
  array[0..-2].join(', ') + " and #{array[-1]}"
end

p format_comma_and(%w(Bonnie Clyde))              # => "Bonnie and Clyde"
p format_comma_and(%w(Athos Porthos Aramis))      # => "Athos, Porthos and Aramis"
p format_comma_and(%w(Single))                    # => "Single"
p format_comma_and(%w(Me myself I You yorself))   # => "Me, myself, I, You and yorself"
p format_comma_and([])                            # => ""