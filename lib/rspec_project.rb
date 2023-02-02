arr = [1, 2, 3, 1]

def my_uniq(arr)
	final = []

	if !arr.is_a? (Array)
		raise "must accept an array"
	end
	arr.each do |ele|
		if !final.include?(ele)
			final << ele
		end
	end
	final 
end

class Array
	def two_sum
		pairs = []

		self.each do |ele|
			if !ele.is_a?(Integer)
				raise 'only works on arrays of Integers'
			end
		end

		self.each_with_index do |num1, i|
			(i+1..self.length-1).each do |j|
			num1 = self[i]
			num2 = self[j]
				if num1 + num2 == 0 
					pairs << [i, j]
				end
			end
		end
		pairs
	end
end
