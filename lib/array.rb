class Unique
    attr_accessor :arr

    def initialize(arr)
        @arr = [5,4,3,9,4]
    end

    def uniq 
        return @arr.uniq
    end
end

class TwoSum
    attr_accessor :arr

    def initialize(arr)
        @arr = arr
    end

    def two_sum
        new_arr = []
        @arr.each.with_index do |ele, i|
            sub_arr = []
            @arr.each.with_index do |ele2, i2|
                if i2 > i
                    if ele2 + ele == 0
                        sub_arr << i << i2
                        new_arr << sub_arr
                    end
                end
            end
        end
        new_arr
    end

end

class MyTranspose
    attr_accessor :arr
    def initialize(arr)
        @arr = arr
    end

    def my_transpose
        @arr.transpose
    end 
end

class StockPicker
    attr_accessor :arr, :buy, :sell

    def initialize(arr)
        @arr = arr
        @buy = buy
        @sell = sell
    end
    
    def stock_picker  #[20, 10, 40, 5, 0, 90]
        largest = @arr[0]
        smallest = @arr[0]
        (0...@arr.length).each do |i|
            if @arr[i] > largest
                largest = i 
            elsif @arr[i] < smallest
                smallest = i 
            end
        end
        [smallest, largest]
    end

    def self.sell(day)
        raise "you have nothing to sell" if @buy = day
        @sell = day
        @buy = nil
        
    end

    def self.buy(day)
        @buy = day
    end


end