require "rspec_project"

describe "#my_uniq" do
  subject(:arr) { Array.new(4, "A") }

  	context "properly accepts an argument" do
		it "accepts an array as an argument" do
		expect(arr).to be_an_instance_of(Array)
		end

		it "raises error if no array is given" do
		expect{ my_uniq(2) }.to raise_error("must accept an array")
		end

		it "should return a new array containing unique elements from the original array" do
			expect( my_uniq([1, 2, 3, 1])).to eq([1, 2, 3])
			expect( my_uniq([2, 4, 2, 4, 6])).to eq([2, 4, 6])
			expect( my_uniq(arr)).to eq(["A"])
			
		end

		it "should not use built in Array#uniq" do
			expect(arr).to_not receive(:uniq)
		end
	end
end
