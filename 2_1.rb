# frozen_string_literal: true

file_data = File.read('input/2.txt').split("\n")

depth = 0
distance = 0
file_data.each do |elem|
  data = elem.split
  case data[0]
  when 'forward'
    distance += data[1].to_i
  when 'up'
    depth -= data[1].to_i
  when 'down'
    depth += data[1].to_i
  end
end
puts depth * distance
