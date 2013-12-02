#IN PROGRESS

string = "aaabc"

target = "aabc"

counters = [0] * target.length

string.each_char do |string_char|
  if string_char == target[0]
    counters[0] += 1
  elsif target.count(string_char) == 1
    counters[target.index(string_char)] += counters[target.index(string_char) - 1]
  elsif target.count(string_char) > 1
    index = 0
    target.each_char do |target_char|
      if string_char == target_char
        counters[index] += counters[index -1]
      end
      index += 1
    end
  end
end

print counters
puts
puts "total #{target}'s found: #{counters[-1]}"


string.each_char do |char|
  index = target.index(char)
  if index == 0
    counters[index] += 1
  else
    counters[index] += counters[index - 1]
  end
end
