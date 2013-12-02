string = IO.read('./abc.txt')

count_a = string.count('a')
count_b = string.count('b')
count_c = string.count('c')

total_combos = count_a * count_b * count_c

a_countdown = count_a
c_countdown = count_c
b_countdown = count_b

string.each_char do |char|
	if char == 'b'
		total_combos -= a_countdown * c_countdown
		b_countdown -= 1
	elsif char == 'a'
		a_countdown -= 1
	elsif char == 'c'
		total_combos -= count_a * b_countdown
		c_countdown -= 1
	end
end

puts total_combos