class Friend
    def greeting(person=nil)
        if person
            p "Hello, #{person}!"
        else
            p "Hello!"
        end
    end
end
