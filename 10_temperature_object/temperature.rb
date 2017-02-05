class Temperature
    
    def initialize(temp)
        @fahrenheit= temp[:f]
        @celsius = temp[:c]
    end

    def in_fahrenheit
        @fahrenheit || (@celsius * 9.0/5)+32
    end

    def in_celsius
        @celsius || (@fahrenheit - 32)*5.0/9
    end

    def self.from_celsius(temp)
        Temperature.new({:c=>temp})
    end

    def self.from_fahrenheit(temp)
        Temperature.new({:f=>temp})
    end

end

class Celsius < Temperature
    def initialize(temp)
        super(:c=>temp)
    end
end

class Fahrenheit < Temperature
    def initialize(temp)
        super(:f=>temp)
    end
end