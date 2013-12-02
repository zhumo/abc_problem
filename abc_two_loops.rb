string = IO.read('./abc.txt')

a_count = 0
a_counts = []
c_count = 0
c_counts = []

string.each_char do |char|
	if char == 'a'
		a_count += 1
	elsif char == 'b'
		a_counts << a_count
	end
end

string.reverse.each_char do |char|
	if char == 'c'
		c_count += 1
	elsif char == 'b'
		c_counts << c_count
	end
end

array_position = -1
sum = 0

a_counts.each do |count|
	sum += count * c_counts[array_position]
	array_position -= 1
end

puts sum