class Book
    attr_reader :title

    def title=(title)
        @title = titlelize(title)
    end

    private
    def titlelize(title)
        conjunctions = %w{and of in on upon a an the }
        title.capitalize.split.map{|t|conjunctions.include?(t) ? t : t.capitalize }.join(" ")
    end
end