# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  for item in arr
    total = total + item
  end
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  if (arr.size == 0)
    return 0
  elsif (arr.size == 1)
    return arr[0]
  else
    arr = arr.sort {|a,b| b <=> a}
    return (arr[0] + arr[1]).to_i
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  flag = false
  index = 0
  for item in arr
    diff = n - item
    currIndex = arr.index(item)
    if ((arr.reject.with_index { |_, ind| ind == index}).include?(diff))
      flag = true
      break
    end
    index += 1
  end
  return flag
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowels = ['a', 'e', 'i', 'o', 'u']
  flag = false
  if (s.class == String && (s.size > 0) && (s[0].downcase =~ /[[:alpha:]]/) && (!(vowels.include?(s[0].downcase))))
    flag = true
  end
  return flag
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  flag = true
  if ((s.size == 0) || (!(s.each_char.all? {|x| x =~ /[01]/})) || (!(s.to_i(2) % 4 == 0)))
    flag = false
  end
  return flag
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if ((isbn.to_s == "") || (price <= 0))
      raise ArgumentError.new
    end
    @isbn = isbn
    @price = price
  end
  def display
    puts "ISBN: " + @isbn.to_s
    puts "Price: " + @price.to_s
  end
  def set_isbn(isbn)
    self.isbn = isbn
  end
  def set_price(price)
    self.price = price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def price=(price)
    @price = price
  end
  def price_as_string
    return "$#{'%.02f' % @price}"
  end
end