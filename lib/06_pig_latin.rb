def translate(str)
    vowel = ['a', 'e', 'i', 'o', 'u', 'y']
    sp_str = str.split
    consonant = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
    i = 0
    new_str = ""

    while sp_str[i]
        cons = 0
        if i > 0
            new_str << " "
        end
        # Translates a word beginning with a vowel
        if vowel.include?(sp_str[i][0])
            new_str << sp_str[i] + "ay"
        else
            j = 0
            while consonant.include?(sp_str[i][j])
                if sp_str[i][j+1] == 'u'
                    cons += 1
                end
                cons += 1
                j += 1
            end
            # Translates a word beginning with a consonant
            if consonant == 1
                new_str << sp_str[i].reverse + "ay"
            # Translates a word beginning with two or more consonants
            else
                new_str << sp_str[i][cons..str.length] + sp_str[i][0..cons-1] + "ay"
            end
        end
        i += 1
    end
    return new_str
end 
