require 'aes'

source_file = ARGV[0]
flag = ARGV[1]
password = ARGV[2]

if flag == '-e'
  encrypted = AES.encrypt(File.read(source_file+".txt"), password)
  target_file = "#{source_file}.enc"
  File.open(target_file, "wb") {|f| f.write(encrypted)}
elsif flag == '-d'
  decrypted = AES.decrypt(File.read(source_file+".enc"), password)
  target_file = "#{source_file}-dec.txt"
  puts decrypted
  File.open(target_file, "wb") {|f| f.write(decrypted)}
else
  puts "Invalid Flag Provided"
end
