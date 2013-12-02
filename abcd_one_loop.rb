string = "dcdaaadabbbaabacbcbabdbbdaaaccbbcdcaddcaaccbdacbac"

a_counter = 0
ab_counter = 0
abc_counter = 0
abcd_counter = 0

string.each_char do |char|
	if char == "a"
		a_counter += 1
	elsif char == "b"
		ab_counter += a_counter
	elsif char == "c"
		abc_counter += ab_counter
	elsif char == "d"
		abcd_counter += abc_counter
	end
end

puts abcd_counter
