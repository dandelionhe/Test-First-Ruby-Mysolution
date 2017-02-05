class Dictionary
    attr_accessor :entries
    def initialize
        @entries={}
    end

    def add(item)
        if item.is_a? String
            @entries[item]=nil
        else
            item.each do |k,v|
                @entries[k]=v
            end
        end
    end

    def keywords
        @entries.keys.sort
    end

    def include?(item)
        @entries.keys.include?(item)   
    end

    def find(item)
        result={}
        @entries.each do |k,v|
            result[k]=v if k =~ /#{item}/
        end
        result
    end

    def printable
        @entries.sort.map do |k,v|
            "[#{k}] \"#{v}\""
        end.join("\n")

    end
end
