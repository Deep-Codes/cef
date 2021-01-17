# Let's define an array of books
books = ["Siddhartha", "Shogun", "Discworld"]

# How many books are there?
puts books.length

# What is the first book?
puts books[1]

# Uh, oh, that's the second book. Array indexes start at 0!
puts books[0]

# Now let's get the last book from the array.
# This will work in any array of any length.
puts books[books.length - 1]

# Let's add a new book to the end of the array
puts books.push("Harry Potter")

# Now what could be the last element in the array?
# We actually don't have to do `books.length - 1`.
# There is a Ruby method that does exactly that!
puts books.last

nums =  [2,4,6,8,10];
nums.each {|n| puts "Number is: #{n}"}

newList = nums.map {|n| n*100}
puts newList



