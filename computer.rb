def reverse(str)
  arr = str.chars
  reversed_str = []
  n = 0
  while n <= str.length
  reversed_str << arr.pop
    n +=1
  end
  str == reversed_str.join
end


def word_cap(str)
  str.split.map do |word|
    word.capitalize
   end.join(' ')
end

p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')