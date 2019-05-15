require 'pry'
nums = (1..100).to_a

def my_find(collection)
    i = 0
    while i < collection.length
        if yield collection[i]
            return collection[i]
        end
        i += 1
    end
end

puts my_find(nums){|num| num % 3 == 0 && num % 5 == 0}