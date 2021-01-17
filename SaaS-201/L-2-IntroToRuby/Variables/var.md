# Variables

### Integers

Convert Integer to String with `to_s` method.

```ruby
age = 19
name = "Deepankar"
puts "I am " + name + " and I am " + age.to_s + " old."
```

Alternative to this method is use String Interpolation

```rb
answer = 42
puts “answer to life is #{answer}”
```

### Floats

```rb
puts 5/2
# You will get 2 as a result.
```

Fix:

```rb
puts 5.tp_f/2.to_f
# will give 2.5
```

### String

```ruby

str = "deepanakar"

puts str.length # Length of the string

puts str.upcase # Convert all characters to capital case

puts str.downcase # Convert all characters to small case

puts str.capitalize # Capitalizes the first letter of the string
```

### Boolean

```ruby
puts 1 == 1
puts "this" == "that"
puts 1 < 2
puts 1 > 2
puts 42 >= 42
```

### IF statements

```ruby
puts "Fiction or non-fiction?"
genre = gets.chomp.downcase

if genre == "fiction"
  puts "Try reading Cryptonomicon by Neal Stephenson"
elsif genre == "non-fiction"
  puts "You should read The Ascent of Man by Jacob Bronowski!"
else
  puts "Oh I don't know about that genre"
end
```
