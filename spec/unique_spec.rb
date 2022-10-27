require 'rspec'
require 'unique.rb'

describe Unique do
    subject (:array) {Unique.new([1,2,1,3,3])}

    describe "uniq" do
        it "removes duplicates from the array" do
            expect(array).to eq(array)
            array.uniq 
            expect(array.uniq).to eq(array.uniq)
        end

    end

end