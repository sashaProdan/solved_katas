
# Complete the method/function so that it converts dash/underscore 
# delimited words into camel casing. The first word within the output 
# should be capitalized only if the original word was capitalized.

def to_camel_case(str)
  return str if str.empty?
  str = str.split(/[-\_]/)

  if /[[:upper:]]/.match(str.first) == nil
    str.first + str[1..str.length].map(&:capitalize).join
  else
    str.map(&:capitalize).join
  end
end

# returns "theFavoriteMovieOfAll"
p to_camel_case("the-favorite-movie-of-all") 

# returns "TheFavoriteMovieOfAll"
p to_camel_case("The_favorite_movie_of_all")

# returns "theFavoriteMovieOfAll"
p to_camel_case("the-Favorite_movie-of_All")
