string = IO.read('./abc.txt')
target = "abc"

def make_vars(target)
  target = target.split(//)
  while target.length > 0
    instance_variable_set("@#{target.join}_counter", 0)
    target.pop
  end
end

make_vars(target)

def calculate_combos (target, string)
  target = target.split(//)
  string.each_char do |char|
    first_counter = "@#{target[0]}_counter"
    if char == target[0]
      instance_variable_set(first_counter, instance_variable_get(first_counter) + 1)
    else
      target.each do |letter|
        current_counter = "@#{target[0..(target.index(letter))].join}_counter"
        prev_counter = "@#{target[0..(target.index(letter) - 1)].join}_counter"
        if char == letter
          instance_variable_set(current_counter, instance_variable_get(current_counter) + instance_variable_get(prev_counter))
        end
      end
    end
  end
end

calculate_combos(target, string)

puts instance_variable_get("@#{target[0..-1]}_counter")