def reverser
    yield.split.map{|wd|wd.reverse}.join(" ")
end

def adder(num=1,&block)
    block.call + num
end

def repeater(num=1,&block)
    num.times do
        block.call
    end
end