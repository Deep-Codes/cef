books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

# fill in code that will create a Hash that looks like:
#   {
#     :bruno => "Design as Art",
#     :neal => "Anathem",
#     ...
#   }

tempHash =  {}

newList =books.map.with_index  {|b , i | tempHash[authors[i].split(" ")[0].downcase.to_sym] = [b]}

puts tempHash
