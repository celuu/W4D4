require 'rspec'
require 'array.rb'

describe Unique do
    subject(:array) {Unique.new([1,2,1,3,3])}

    describe "uniq" do
        it "removes duplicates from the array" do
            expect(array).to eq(array)
            array.uniq 
            expect(array.uniq).to eq(array.uniq)
        end
    end
end

describe Two_sum do
    subject(:array) {Two_sum.new([-1, 0, 2, -2, 1])}

    describe "two_sum" do
        it "should return the indexes that sum to zero" do
            expect(array.two_sum).to eq([[0,4], [2,3]])
        end
    end
end

