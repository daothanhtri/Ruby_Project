def bubble_sort(array)

    array_length = array.size - 1

    if array_length < 1
        return array
    end

    for i in 0..array_length
        swapped = false
       for j in 0..array_length - i - 1
            if array[j] > array[j + 1]
                array[j], array[j+1] = array[j+1], array[j]
                swapped = true
            end
       end
       break if swapped == false
    end

    array
end

p bubble_sort([4,3,78,2,0,2])

p bubble_sort([4])

p bubble_sort([1,2,3,6,3,9,10,45,10,50,1])