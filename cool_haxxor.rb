
require 'prime'

p "giv e"
e = gets.chomp.to_f
p "giv n"
n = gets.chomp.to_i
p "giv urs msg"
message = gets.chomp.to_i

many_numbers = Prime.first 2**21
p many_numbers


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

# calculates d
def calc_the_rest(p,q, e)
    m = (p-1)*(q-1)
    p "d is #{find_d(m,e)}"
    return find_d(m,e).to_i
end

# binary search
    bottom = 0
    top = many_numbers.length 
    i = (top+bottom)/2
    last_i = nil
    current_i = i

    # find index of closest to half of number in prime list
    while last_i != current_i
        last_i = current_i
        # check if current index in list of 
        # primes is larger than half of the given
        if many_numbers[i] > n**0.5
            top = i
        # check if current index in list of 
        # primes is smaller than half of the given
        elsif many_numbers[i] < n**0.5
            bottom = i
        end
        current_i = (top+bottom)/2
        i = current_i
        
    end
    i = current_i
    # starts at the end of the array
    last_dig = many_numbers[i]
    
    
    
    
    # if many numbers return nil means the prime is out of range
   if many_numbers[i + 1] == nil
        p "it was too big"
        i = many_numbers.length
        # # checks if sq root is even
        # if n % 2 == 0
        #     last_dig  += 1
        #     p last_dig
        #     p "it was even"
        #     x = -1
        # end

        # adds last dig to end of list
        many_numbers << last_dig 
        
        while n.modulo(many_numbers[i]) != 0 && last_dig > 0
            last_dig = last_dig + (2)
            
            if  last_dig.prime? 
                p last_dig
                # counts down and adds all new numbers to array whilst checking if theyre prime
                many_numbers << last_dig
                i += 1
               
                if many_numbers[i] == 999983
                    p "found the actual"
                end
            
                
            end
        end
    else
#     # finds highest common denominator
        while n % many_numbers[i] != 0
            i -= 1
            # p "i is #{i}"
        end 
    end
  p "done with the while loops"  
    # while n % many_numbers[i] != 0
    #     i -= 1
    # end 




p = many_numbers[i]
q = n/many_numbers[i]

message = message.pow(calc_the_rest(p,q,e), n)

p "message is #{message}"
