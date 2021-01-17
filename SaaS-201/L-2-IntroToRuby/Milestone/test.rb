def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument


# File.readlines reads a file and returns an
# array of string, where each element is a line
# https://www.rubydoc.info/stdlib/core/IO:readlines
dns_raw = File.readlines("zone")

# ! Code here

# PARSE_DNS FUNCTION

def parse_dns(raw)
    # Filtering Lines with Comments and Empty Lines
  dns_filter = raw.select {|x| x[0]!= "#" && x != "\n" }

  # Creating a List with 3 Columns
  dns_filter_list = []
  dns_filter.each {|x| dns_filter_list.push(x.split(", "))}

  # Creating the List each DNS for Hash
  record_type_list = []
  source_list = []
  destination_list = []

  dns_filter_list.each do |x|
    record_type_list.push(x[0])
    source_list.push(x[1])
    destination_list.push(x[2])
  end

  # Building the Hash
  dns_hash = {
    "RECORDTYPE".to_sym => record_type_list,
    "SOURCE".to_sym => source_list,
    "DESTINATION".to_sym => destination_list,
  }
  return dns_hash
end

def resolve(dns_records, lookup_chain, domain)
  index_of_source  = dns_records[:SOURCE].index(domain)
  # If it is an CNAME RECURSIVE
  if dns_records[:RECORDTYPE][index_of_source-1] == 'CNAME'
    puts dns_records[:RECORDTYPE][index_of_source-1]
    # Push the Domain in the List
    temp_domain = dns_records[:DESTINATION][index_of_source-1]
    lookup_chain.push(temp_domain)
    resolve(dns_records, lookup_chain, temp_domain)
  elsif dns_records[:RECORDTYPE][index_of_source-1] == 'A'
    # Push the Domain in the List
    lookup_chain.push(dns_records[:DESTINATION][index_of_source])
    return lookup_chain
  end
end




# ! Code Ends

# To complete the assignment, implement `parse_dns` and `resolve`.
# Remember to implement them above this line since in Ruby
# you can invoke a function only after it is defined.
dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")


