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

find_d(216.0, 5.0)