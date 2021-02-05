# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_result = 0
  for i in arr
  	sum_result = sum_result + i
  end
  return sum_result
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
	  return 0
  elsif arr.size == 1
	  return arr[0]
  end
  first_max = 0
  second_max = 0
  first_max = arr.max
  fm_index = arr.index(first_max)
  arr.delete_at(fm_index)
  second_max = arr.max
  max_2_sum = first_max + second_max
  return max_2_sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size == 0 or arr.size == 1
	  return false
  end
  for i in (0..arr.size-1)
	  for j in (i+1..arr.size-1)
                  if n == arr[i] + arr[j]
			  return true
		  end
	  end
  end
  return false

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size == 0
	  return false
  end
  if !s[0].match(/[a-zA-Z]/)
	  return false
  end
  if s[0] != 'A' and s[0] != 'a' and s[0] != 'E' and s[0] != 'e' and s[0] != 'I' and s[0] != 'i' and s[0] != 'O' and s[0] != 'o' and s[0] != 'U' and s[0] != 'u'
	  return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s = s.reverse
  dec = 0
  if s.size == 0
	  return false
  end
  for i in (0..s.size-1)
	 #if s[i] != '0' or s[i] != '1' or s[i] != ' '
		# return false
	 #end
	 if s[i] == '0' or s[i] == '1'
	 	 dec = dec + Integer(s[i])*(2**i)
	 elsif s[i] != '0' or s[i] != '1'
		 return false
	 end
  end
  if dec%4 == 0
	  return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	attr_accessor :isbn, :price

	def initialize isbn, price
		if isbn.size == 0 or price <= 0
			raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end

	def price_as_string
		@price = format("$%.2f", @price)
	end
end
