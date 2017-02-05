def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str,n=2)
    result =""
    (n-1).times do 
        result +=(str + " ")
    end
    result +=str
end

def start_of_word(str,n)
    str[0,n]
end

def first_word(str)
    str.split[0]
end

def titleize(str)
    little_words=%w{the of over and a an but in on }
    result=[]
    str.split.each_with_index do |wd,idx|
        if idx == 0 || !little_words.include?(wd)
            result << wd.capitalize 
        else
            result << wd
        end
    end
    result.join(" ") 
end




