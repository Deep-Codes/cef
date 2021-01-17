# Problem 3. Print the given list of todos by category. (You haven't learned Hashes yet, so use only arrays.)

todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"]
]

money = todos.find_all {|x| x[1] == "money"}
organize = todos.find_all {|x| x[1] == "organize"}
food = todos.find_all {|x| x[1] == "food"}

puts "money:\n"
money.each {|el| puts "#{el[0]}"}
puts "organize:\n"
organize.each {|el| puts "#{el[0]}"}
puts "food:\n"
food.each {|el| puts "#{el[0]}"}