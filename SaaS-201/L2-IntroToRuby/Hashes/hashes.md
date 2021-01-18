# Hashes

```rb
library = {
  "rowling" => "Harry Potter",
  "lahiri" => "Interpreter of Maladies"
}

puts library["lahiri"]    # This will print "Interpreter of Maladies"

```

A Hash, like an array, stores a collection of objects. But we can use any Ruby object as a key of a Hash. In the above example, we used the last name of authors as the keys, and the books they wrote as their values.

When we iterate over a Hash with .each or .map, we get both the key and its value on each iteration.

```rb
library.each do |author, books|
  puts "#{author.capitalize} wrote the books #{books.join(', ')}"
end
```

#### Symbols

Ruby also has a data type called symbols. They're quite similar to strings, but a bit shorter to write.

a = :name
c = :"multiple words" # Enclose multi-word symbols in double quotes

```rb
# symbols are just like any other data and
# we can put them inside arrays and hashes
c = [:x, :y]
```

Symbols are most commonly used in Ruby as keys in Hashes:

```rb
library = {
  :austen => ["a", "b"]
}
library[:rowling] = ["x"]
```

Hint: To convert a string into a symbol, use the .to_sym method
