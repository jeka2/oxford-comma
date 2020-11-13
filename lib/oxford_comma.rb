def oxford_comma(array)
    string = ""
    case_with_two = false
    multiple_terms = false
    case_with_two = true if array.size == 2
    multiple_terms = true if array.size > 1
    array.each_with_index do |word, i|
        if multiple_terms
            if i == array.size - 1 && case_with_two
                string = string.chop.chop
                string << " "
            end
            string << "and " if i == array.size - 1
            string << word + ", "
            string = string.chop if i == array.size - 1
        else
            string << word + " "
        end
    end
    string.chop
end