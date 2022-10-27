class Unique
    attr_accessor :arr
    def initialize(arr)
        @arr = [5,4,3,9,4]
    end

    def uniq 
        return @arr.uniq
    end
end