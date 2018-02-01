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

# def hello(name)
#   # YOUR CODE HERE
# end

# def starts_with_consonant? s
#   # YOUR CODE HERE
# end

# def binary_multiple_of_4? s
#   # YOUR CODE HERE
# end

# # Part 3

# class BookInStock
# # YOUR CODE HERE
# end
