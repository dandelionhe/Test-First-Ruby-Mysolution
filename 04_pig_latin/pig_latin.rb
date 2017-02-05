def translate(words)
    vowel = %w{a e i o u}
    words.split.map do |wd|
        while(!vowel.include?(wd[0]))
            if wd[0]=='q' && wd[1]=='u'
                wd = wd[2..-1]+wd[0,2] 
            else
                wd = wd[1..-1]+wd[0]
            end
        end
        wd+='ay'
    end.join(" ")

end