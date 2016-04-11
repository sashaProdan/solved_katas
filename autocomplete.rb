# The autocomplete function will take in an input string and a dictionary array 
# and return the values from the dictionary that start with the input string. 
# If there are more than 5 matches, restrict your output to the first 5 results.
# If there are no matches, return an empty array.

# Example:

# For this kata, the dictionary will always be a valid array of strings.
# Please return all results in the order given in the dictionary, even if 
# they're not always alphabetical. The search should NOT be case sensitive,
# but the case of the word should be preserved when it's returned.

# For example, "Apple" and "airport" would both return for an input of 'a'.#
# However, they should return as "Apple" and "airport" in their original cases.

# Any input that is NOT a letter should be treated as if it is not there. 
# For example, an input of "$%^" should be treated as "" and an input of "ab*&1cd"
# should be treated as "abcd".

dictionary=[ 'abnormal',
  'arm-wrestling',
  'absolute',
  'airplane',
  'airport',
  'Amazing',
  'apple',
  'alphabetical',
  'altruistic',
  'AgnostiC',
  'ball',
  'bear',
  'beer',
  'beginning',
  'bun',
  'big' ]

def autocomplete(input, dictionary)
  str = input.scan(/[a-z]/).join.downcase
  str.empty? ? dictionary[0..4] : dictionary.select{ |word| word.downcase.start_with? str }.first(5)
end




p autocomplete('%^%&*&^', dictionary)