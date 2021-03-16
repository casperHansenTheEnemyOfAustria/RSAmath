require 'prime'

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
    p "i is #{i}"
    return d
end

many_numbers = [1038227,1016143, 1071683, 1124087, 1162493, 1229483, 1279871 ]

p = many_numbers[rand(0..(many_numbers.length - 1))]
q =  many_numbers[rand(0..(many_numbers.length - 1))]


# does nessicairy operations
n = p*q
m = ((p-1)*(q-1))
e = 1.0


# checks if m is not divisible by m to generate a suitable e
while m/e == (m/e).to_i
    e += 1.0
end

d = find_d(m,e).to_i


p "n is #{n}"
p "e is #{e}"
# p "m is #{m}"
# p "d is #{d}"
# makes them all integers swag
d = d.to_i
e = e.to_i
m = m.to_i
n = n.to_i
p "no its integer time"
p "n is #{n}"
p "e is #{e}"
# p "m is #{m}"
p "d is #{d}"


# client side
p "give me your message "
message = gets.chomp.to_i


    # p "#{message}^#{e} mod #{n} is"
    # hello my name is jhon doe
    


    # p "#{message}^#{d} is #{message**d}"

    actual_message = message.pow(d,n)
    p "the message was" + " #{actual_message} but dont show this to the hacker man or he will steal all ur furry porn"
    