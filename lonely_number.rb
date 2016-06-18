# Lonely number

# Solution 1

def lonely(arr)
  return arr[0] if arr.size < 2
  arr.select { |i| i if arr.count(i) < 2 }[0]
end

# Solution 2

def lone(array)
  hash = Hash.new
  array.each do |i|
    if hash[i].nil?
      hash[i] = 1
    else
      hash[i] += 1
    end
  end
  array.each { |a| puts a if hash[a] == 1}
end
