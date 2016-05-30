
# You have to create all permutations of an input string and
# remove duplicates, if present. This means, you have to shuffle all letters
# from the input in all possible orders.

def permsol(str)
  str.chars.permutation.to_a.map(&:join).uniq  
end

permsol('aabb')   # => ['ab', 'ba']

permsol('a')      # => ['a']

permsol('aabb')   # => ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']