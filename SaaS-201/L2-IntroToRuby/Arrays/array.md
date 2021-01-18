# Arrays

### Basics

```ruby
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
```

[More Methods: ](https://docs.ruby-lang.org/en/2.6.0/Array.html)

### Transforming:

Here the code we wrote inside the each block gets executed for every element of the list.

```ruby
nums = [2, 4, 200, 400]
nums.each {|x| puts "The current number is #{x}" }
```

There is another method, that can create a new, transformed array from an existing array.

```ruby
nums = [2, 4, 200, 400]
new_nums = nums.map {|number| number * 125 }
new_nums.each {|n| puts n }
```

#### Join Method:

```ruby
[ "a", "b", "c" ].join
[ "a", "b", "c" ].join("-")
```

#### Filter:

```ruby
evenList = [1,2,3,4,5].select {|num| num.even? }
```

#### Find

```ruby
(1..100).detect  { |i| i % 5 == 0 and i % 7 == 0 }
```
