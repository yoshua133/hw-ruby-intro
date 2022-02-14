# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |a| sum+=a }
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  max2 = arr.max(2)
  return max2.sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length <= 1
    return false
  end
  map = Hash.new
  for i in 0..arr.length-1
    if map.has_key?(n-arr[i])
      return true
    else
      map[arr[i]] = 1
    end      
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  s = s.downcase
  if not s[0].match?(/[[:alpha:]]/)
    return false
  end
  if ['a','e','o','u','i'].include? s[0]
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  def is_number? string
    true if Float(string) rescue false
  end
  if not is_number?(s)
    return false
  else
    s = s.to_i
    if s%4 ==0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError
    end
    if price<=0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
