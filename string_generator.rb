target_letter_combination = "abcd"
desired_output_string_length = 50

letters = target_letter_combination.split("")

generated_string = []

desired_output_string_length.times do
  generated_string << letters.sample
end

puts "\"#{generated_string.join}\""