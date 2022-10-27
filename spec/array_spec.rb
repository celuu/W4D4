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

describe TwoSum do
    subject(:array) {TwoSum.new([-1, 0, 2, -2, 1])}

    describe "two_sum" do
        it "should return the indexes that sum to zero" do
            expect(array.two_sum).to eq([[0,4], [2,3]])
        end
    end
end

describe MyTranspose do
    subject(:array) {MyTranspose.new([[0, 1, 2], [3, 4, 5], [6, 7, 8] ])}
    describe "#my_transpose" do
        it "Convert between the row oriented and column oriented representation" do
            expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end
end

#check if its the most profitable

describe StockPicker do 
    subject(:array) {StockPicker.new([20, 10, 40, 5, 0, 90])}
    let(:buy) {StockPicker.buy(3)}
    let(:sell) {StockPicker.sell(2)}
    describe "#stock_picker" do
        it "raise an error when trying to sell a stock that hasnt been bought yet" do
            expect{sell}.to raise_error("you have nothing to sell")
        end

        it "it should return an array of the most profitable days to buy and sell" do 
            expect(array.stock_picker).to eq([4, 5])
        end
    end
end




