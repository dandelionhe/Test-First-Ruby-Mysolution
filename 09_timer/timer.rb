class Timer
    attr_accessor :seconds
    def initialize
        @seconds=0
    end

    def time_string
        hours = @seconds / 3600
        leftover = @seconds % 3600
        mins = leftover / 60
        leftover = leftover % 60
        secs = leftover

        [format(hours),format(mins),format(secs)].join(":")
    end

    private
    def format(num)
        num.to_s.length > 1 ? num.to_s : "0"+num.to_s
    end

end