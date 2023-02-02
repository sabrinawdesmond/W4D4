require 'rspec'
require 'rspec_project.rb'

describe '#remove_dups' do 
	it 'accepts an array as an argument' do 
		expect {remove_dups([])}.to raise_error do 
			it 'raises error if no array is given' do 
			end
		end
	end
end