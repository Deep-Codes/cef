str = "deepanakar"

puts str.length # Length of the string


puts str.upcase # Convert all characters to capital case


puts str.downcase # Convert all characters to small case


puts str.capitalize # Capitalizes the first letter of the string

puts 1 == 1
puts "this" == "that"
puts 1 < 2
puts 1 > 2
puts 42 >= 42


puts "Fiction or non-fiction?"
genre = gets.chomp.downcase

if genre == "fiction"
  puts "Try reading Cryptonomicon by Neal Stephenson"
elsif genre == "non-fiction"
  puts "You should read The Ascent of Man by Jacob Bronowski!"
else
  puts "Oh I don't know about that genre"
end