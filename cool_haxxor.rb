p "giv e"
e = gets.chomp.to_f
p "giv n"
n = gets.chomp.to_i
p "giv urs msg"
message = gets.chomp.to_i

many_numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271]


def find_d(m,e)
    i = 1.0
    # checks if m i times plus 1 is divisible by
    # e by checking if the answer has no decimals
    while ((m*i)+1)/e != (((m*i)+1)/e).to_i
        i +=1
    end
    # p "i is #{i}"
    # returns the division
    d = ((m*i)+1)/e
    return d
end

def calc_the_rest(p,q, e)
    m = (p-1)*(q-1)
    p "d is #{find_d(m,e)}"
    return find_d(m,e).to_i
end

i = many_numbers.length - 1

while n % many_numbers[i] != 0
    i -= 1
end 
p = many_numbers[i]
q = n/many_numbers[i]

p message
p calc_the_rest(p,q,e)

message = (message**calc_the_rest(p,q,e)).modulo(n)

p "message is #{message}"