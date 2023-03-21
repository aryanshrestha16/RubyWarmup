def fib(n)
    a = 0
    b = 1
    answer = [a,b]
    if n == 0 
        return []
    elsif n == 1 
        return [0]
    elsif n == 2 
        return answer
    else
    while n > 2
        sum = a + b
        answer.push(sum)
        a = b
        b = sum 
        n = n - 1
    end
    return answer
end
end

def isPalindrome(n)
    n = n.to_s
    n == n.reverse
end

def nthmax(n, a)
    if n > a.length 
        return nil
    else
        a = a.sort.reverse!
        return a[n]
    end
        
end

def freq(s)
    if s == ""
        return ""
    else
    a = Hash.new(0)
    char = s.split("")
    char.each do |char|
    a[char] += 1
    end
    return a.key(a.values.max)
    end
    
end

def zipHash(arr1, arr2)
    i = 0
    hash = Hash.new()
    if arr1.length == arr2.length
        while i < arr1.length
            hash[arr1[i]] = arr2[i]
            i += 1
        end
        return hash
    else
        return nil
    end
end

def hashToArray(hash)
    if hash.empty? == true
        return []
    else
        return hash.to_a
    end
end
