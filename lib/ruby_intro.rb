# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0;
  arr.each { |x| 
    sum += x;
  }
  return sum;
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  end
  max1 = arr[0] >= arr[1] ? arr[0] : arr[1]
  max2 = !(arr[0] >= arr[1]) ? arr[0] : arr[1]
  i = 2
  while i < arr.length() do
    if arr[i] > max1 
      max2 = max1
      max1 = arr[i]
    elsif arr[i] > max2 
      max2 = arr[i]
    end
    i = i + 1
  end
  return max1 + max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  i = 0
  while i < arr.length() do
    j = i + 1
    while j < arr.length() do
      if arr[i] + arr[j] == n
        return true
      end
      j = j + 1
    end
    i = i + 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length() == 0
    return false
  end
  consonant = "bcdfghjklmnpqrstvwxyz"
  return consonant.include? s.downcase[0]
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length() == 0
    return false
  end
  i = 0
  value = 0
  while i < s.length() do 
    if s[i] == "1"
      value = value * 2
      value = value + 1
    elsif s[i] == "0"
      value = value * 2
    else
      return false
    end
    i = i + 1
  end
  return value % 4 == 0
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  
  #Constructor  
  def initialize(isbn_in, price_in)
    raise ArgumentError.new(
      "Expected price > 0.0, got #{price_in}"
    ) if price_in <= 0
    raise ArgumentError.new(
      "Expected non-empty string, got #{isbn_in}"
    ) if isbn_in.empty?
    @isbn = isbn_in
    @price = price_in
  end
  
  #isbn getter/setter
  def isbn
    @isbn
  end
  def isbn=(isbn_in)
    @isbn = isbn_in
  end
  
  #price getter/setter
  def price
    @price
  end
  def price=(price_in)
    @price = price_in
  end
  
  #price as a string
  def price_as_string
    return "$%0.2f" % [price]
  end
 
end
