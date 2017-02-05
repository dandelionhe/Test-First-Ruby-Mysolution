class Array
    def square
        self.map{|num|num**2}
    end

    def square!
        self.map!{|num|num**2}
    end
end