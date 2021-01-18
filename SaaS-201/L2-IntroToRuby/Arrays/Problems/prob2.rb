# Problem 2. Given two arrays books and authors, merge them and print who wrote which book.


books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

newList =books.map.with_index  {|b , i | "#{b} by #{authors[i]}"}

puts newList