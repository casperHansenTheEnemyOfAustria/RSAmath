def find_d(m,e)
    i = 1
    while ((m*i)+1)/e != (((m*i)+1)/e).to_i
        i +=1
    end
    d = ((m*i)+1)/e
    return d
end


many_numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
# 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271
p = many_numbers[rand(0..(many_numbers.length - 1))]
q =  many_numbers[rand(0..(many_numbers.length - 1))]



n = p*q
m = ((p-1)*(q-1)).to_f
e = 1.0

while m/e == (m/e).to_i
    e += 1.0
end

p "n is #{n}"
p "e is #{e}"

d = find_d(m,e)

p "give me your message"
message = gets.chomp.to_i

actual_message = (message**d)%n
p "the message was" + " #{actual_message}"