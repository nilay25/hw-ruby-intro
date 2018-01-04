# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	arr.inject(0, &:+)
	#nifty function found from the ruby-doc.org website
end

def max_2_sum arr
	sum(arr.sort.last(2))
	#starts by sorting the array of integers from smallest to largest and then
	#gets the two largest integers and takes the sum of it (using the previous sum function).
end

def sum_to_n? arr, n
	arr.combination(2).any? {|x, y| x + y == n}
	#the ruby documentation has this nifty function named combination that allows the user to 
	#take in two elements and the .any? function passes each element into the block.
	#then we just do the following for the case you're interested in. Which in this case is [x, y] where x+y = n.
end

# Part 2

def hello(name)
	"Hello, " + name
	#simply returns Hello + name given
end

def starts_with_consonant? s
	/^[bcdfghjklmnpqrstvxzwy]/i === s
	#standard regex expression to ensure case equality with s
end

def binary_multiple_of_4? s
	if (s == "0")
		return true
	else
		s = /^[10]*00$/.match(s) != nil
	end
	#first ensure that the string given is a binary number by ensuring it ends in "0"
	#and then by using the regex binary multiple of 4 we check to see if the string matches with
	#being a multiple of 4 or if not, return nothing hence nil.  
end

# Part 3

class BookInStock
	#sources from stackoverflow
	attr_accessor :isbn 
	attr_accessor :price
	#this assigns the ISBN number and price as attributes
	
	def initialize(isbn, price)
		raise ArgumentError, 'Empty ISBN' if isbn.empty?
		raise ArgumentError, 'price is less than or equal to zero' if price <= 0
		@isbn = isbn
		@price = price
		#raising necessary argument errors to allow for fail-safes. 
	end
	
	def price_as_string
		"$%.2f" % @price
		#returns leading dollar sign and trailing zeros
	end
	
end
