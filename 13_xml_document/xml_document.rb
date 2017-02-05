class XmlDocument

    def hello(name=nil)
        if !name
            "<hello/>"
        else
            "<hello #{name}[]"
    end
end