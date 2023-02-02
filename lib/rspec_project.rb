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

