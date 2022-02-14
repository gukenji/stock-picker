require 'pry-byebug'

def stock_picker (array)
    result = Hash.new(0)
    z=1
    for i in 0..array.length-1
        for j in 1..(array.length-z)
            result[[array[i],array[i+j]]] = array[i]-array[i+j]
            # binding.pry
        end
        z+=1
    end
    best_result = max_value(result)
    puts "Buy on day #{array.index(best_result[0][0])} at price #{best_result[0][0]}, Sell on day #{array.index(best_result[0][1])} at price #{best_result[0][1]}. Profit: #{best_result[1]}"
end

def max_value(hash)
    hash.max_by{|k,v| v}
end

stock_picker([17,3,6,8,9,2,1341412,21,01,15,8,6,11,26,313131,2,1,3,2])

