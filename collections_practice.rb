def sort_array_asc(num)
    num.sort
end

def sort_array_desc(num)
    num.sort.reverse
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    array[1],array [2] = array[2],array[1]
    array
end

def swap_elements_from_to(array, index, destination_index)
    array[index], array[destination_index] = array[destination_index], array[index]
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each do |letter|
        letter[2] = "$"
    end
end

def find_a(array)
    array.select do |letter|
        letter[0] =="a"
    end
end

def sum_array(array)
    array.inject do |sum, number|
        sum + number
    end
end

# why do i need to do each_with_index.collect/each? instead of each_with_index only?
def add_s(array)
    array.each_with_index.collect do |word, index|
        if index == 1
            word = word
        elsif index != 1
            word << "s"
        end
    end
end
