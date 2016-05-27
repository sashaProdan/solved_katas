
# Complete the function/method so that it takes CamelCase string
# and returns the string in snake_case notation. Lowercase characters can be
# numbers. If method gets number, it should return string.

def to_underscore(str)
  return str.to_s if str.is_a? Integer
  str.scan(/[A-Z][a-z0-9]+/).delete_if(&:empty?)
  .map(&:downcase).join('_')
end

to_underscore('TestController')    # => 'test_controller'

to_underscore('MoviesAndBooks')    # => 'movies_and_books'

to_underscore('App7Test')          # => 'app7_test'

to_underscore(1)                   # => '1'

