# Problem 2. Given this list of todos, create a Hash keyed by category, whose value is an array containing all the todos in that category. The keys of the Hash must be a symbol.

todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"]
]

# Fill in code that will create a Hash that looks like:
#   {
#     :money =>
#       ["Send invoice", "Pay rent", ...],
#     ...
#   }

money = todos.find_all {|x| x[1] == "money"}
organize = todos.find_all {|x| x[1] == "organize"}
food = todos.find_all {|x| x[1] == "food"}

tempHash = {
  "money".to_sym => money.map {|el| el[0]},
  "organize".to_sym => organize.map {|el| el[0]},
  "food".to_sym => food.map {|el| el[0]}
}

puts tempHash



