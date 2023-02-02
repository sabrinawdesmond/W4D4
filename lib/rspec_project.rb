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

arr_2 = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]

def my_transpose(arr_2)
	new_arr = Array.new(arr_2.length) {Array.new([])}
	
	arr_2.each do |ele|
		if !ele.is_a?(Array)
			raise "Not a 2D array"
		end
	end

	arr_2.each_with_index do |sub_arr, row|
		sub_arr.each_with_index do |ele, col|
			new_arr[col][row] = arr_2[row][col]
		end
	end
	new_arr
end