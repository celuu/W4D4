class Unique
    attr_accessor :arr

    def initialize(arr)
        @arr = [5,4,3,9,4]
    end

    def uniq 
        return @arr.uniq
    end
end

class Two_sum
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