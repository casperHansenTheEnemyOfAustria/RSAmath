p "give me e"
e = gets.chomp.to_i
p "give me n"
n = gets.chomp.to_i
p "hand it over"
message = gets.chomp.to_i

message = message.pow(e,n)

p"your message for the bank is 