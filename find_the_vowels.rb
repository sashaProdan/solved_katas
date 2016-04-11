
# We want to know the index of the vowels in a given word, 
# for example, there are two vowels in the word `super`(the
#  second and the forurth letters)

# Return values

# Mmm => []
# Super => [2, 4]
# Apple => [1, 5]
# YoMama => [1, 2, 4, 6]

# NOTE: Vowels in this context refers to English vowels - aeiouy
# NOTE: this is indexed from [1..n](not zero indexed!)

def vowel_indices(word)
  indexes = []
  word.downcase.split(//).each_with_index do |letter, index|
    indexes << (index + 1) if /[aeiouy]/=~letter
  end
  indexes
end
