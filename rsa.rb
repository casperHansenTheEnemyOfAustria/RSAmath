

puts "give me your first prime"
p = gets.chomp.to_i

puts "give me your second prime"
q = gets.chomp.to_i

n = p*q
m = (p-1)*(q-1)




def find_d(m,e)
    i = 1
    
    while ((m*i)+1)/e != (((m*i)+1)/e).to_i
        p "i is #{i}"
        i +=1
        
    end
    d = ((m*i)+1)/e
    p d
    return d
end
