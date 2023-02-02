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

		context "works with 1D array" do

		it "should return a new array containing unique elements from the original array" do
			expect( my_uniq([1, 2, 3, 1])).to eq([1, 2, 3])
			expect( my_uniq([2, 4, 2, 4, 6])).to eq([2, 4, 6])
			expect( my_uniq(arr)).to eq(["A"])
			
		end
	end
	 
	context 'works with arrays of arrays' do
		it 'returns a unique array from a 2D array' do 
			expect( my_uniq([1, 2, [3, 4], [3, 4]])).to eq([1, 2, [3, 4]])
		end
	end

		it "should not use built in Array#uniq" do
			expect(arr).to_not receive(:uniq)
		end
	end
end

describe Array do
	describe '#two_sum' do
		subject(:arr) { [1, 2, 3, -1] }
		context 'properly accepts argument' do
			it 'accepts an array as an argument' do 
				expect(arr.two_sum).to eq([[0, 3]])
			end
			# it 'raises an error when passed anything but an array' do
			# expect {'1'.two_sum}.to raise_error(NoMethodError, 'only works on arrays of Integers') 
			# end

			it 'raises an error if an element is not an Integer' do 
				expect{ ["boot", 2].two_sum}.to raise_error('only works on arrays of Integers')
			end
		end

		context 'returns array of indexes of a pair of elements that sum to 0' do
			it 'returns a 2D array' do
				expect(arr.two_sum).to eq([[0, 3]])
			end
		end

		context 'If no arguments are given, return []' do
			it 'return an empty array' do 
				expect([].two_sum).to eq([])
			end
		end
	end
end

describe '#my_transpose' do
	subject(:matrix) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
	describe 'accepts an 2D array' do 
		context 'properly accepts argument' do
			it 'should accept an array as an argument' do
				expect(my_transpose(matrix)).to be_an_instance_of(Array)
			end
			it 'only accepts 2D arrays' do 
				expect {my_transpose([1, 2, 3, 4])}.to raise_error("Not a 2D array")
			end
		end
	end
	describe 'Methods' do
		it 'Should not use build in Array#transpose' do
			expect(my_transpose(matrix)).to_not receive(:transpose)
		end
	end
	describe 'Results' do 
		it 'Accepts final 2D array where original row[idx] and col[idx] are reversed' do 
			expect(my_transpose(matrix)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]]) 
		end
	end
end