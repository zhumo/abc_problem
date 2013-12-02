string = IO.read('./abc.txt')

a_count = 0

number_of_cs = string.count('c')
sum = 0

string.each_char do |char|
	if char == 'a'
		a_count += 1
	elsif char == 'c'
		number_of_cs -= 1
	else		
		sum += a_count * number_of_cs 
	end
end

puts sum