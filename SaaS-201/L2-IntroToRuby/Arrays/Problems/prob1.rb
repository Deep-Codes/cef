# Problem 1. Given a nested array of first names and last names, return a new array with the full names.

names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]

nameList = names.map {|el| "#{el[0]} #{el[1]} "}

puts nameList