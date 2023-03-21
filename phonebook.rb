class PhoneBook
    def initialize()
        @listed = Hash.new
        @unlisted = Hash.new
    end

    def add(name, number, is_listed)
        if is_listed == true
            if @listed.key?(name) == false
                if @listed.value?(number) == false
                    if number =~ /\d{3}-\d{3}-\d{4}/
                        if @unlisted.key?(name) == false
                            @listed[name] = number
                            return true
                        else
                            return false
                        end
                    else
                        return false
                    end
                else
                    return false
                end
            else
                return false
            end
        else
            if @unlisted.key?(name) == false
                if number =~ /\d{3}-\d{3}-\d{4}/
                    if @listed.key?(name) == false
                        @unlisted[name] = number
                        return true    
                    else
                        return false
                    end 
                else
                    return false
                end
            else
                return false
            end
        end
    end

    def lookup(name)
        if @listed.key?(name) == true
            return @listed[name]
        else
            return nil
        end
    end

    def lookupByNum(number)
        if @listed.value?(number) == true
            return @listed.key(number)
        else
            return nil
        end
    end

    def namesByAc(areacode)
        answer = []
        for k,v in @listed
            if v[0..2] == areacode
                answer.push(k)
            end
        end
        for k,v in @unlisted
            if v[0..2] == areacode
                answer.push(k)
            end
        end
        return answer
    end
end
