def stock_picker(array)
    days = [0,0]
    best_profit = array[1] - array[0]

    array.each.with_index do |price, index|
        for i in index..array.size - 1 do
            if (array[i] - price > best_profit ? best_profit = array[i] - price : false)
                days[0] = index
                days[1] = i
            end
        end
    end

    days
end

p stock_picker([17,3,6,9,15,8,6,1,10])