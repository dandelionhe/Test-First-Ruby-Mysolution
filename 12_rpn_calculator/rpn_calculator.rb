class RPNCalculator
    attr_accessor :calculator

    def initialize
        @calculator=[]
    end

    def push(num)
        @calculator << num
    end

    def value
        @calculator.last
    end

    def plus
        raise "calculator is empty" if @calculator.length<2
        @calculator << get_num.reduce(:+)
    end

    def minus
        raise "calculator is empty" if @calculator.length<2
        @calculator << get_num.reduce(:-)
    end

    def divide
        raise "calculator is empty" if @calculator.length<2
        @calculator << get_num.map{|num| num.to_f}.reduce(:/)
    end

    def times
        raise "calculator is empty" if @calculator.length<2
        @calculator << get_num.reduce(:*)
    end

    def tokens(string)
        token=[]
        operators=%w{+ - * /}
        string.gsub!(/\s+/,'').chars.each do |ch|
            if operators.include?(ch)
                token << ch.to_sym 
            else
                token << ch.to_i
            end
        end
        token
    end

    def evaluate(string)
        tokens(string).each do |item|
            case item
            when :+
                self.plus
            when :-
                self.minus
            when :*
                self.times
            when :/
                self.divide
            else
                self.push(item)
            end
        end
        self.value
    end

    private
    def get_num
        @calculator.slice!(-2,2)    
    end
end