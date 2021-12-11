# frozen_string_literal: true

file_data = File.read('input/2.txt').split("\n")

aim = 0
depth = 0
distance = 0

file_data.each do |elem|
  data = elem.split
  case data[0]
  when 'forward'
    distance += data[1].to_i
    depth += aim * data[1].to_i
  when 'up'
    aim -= data[1].to_i
  when 'down'
    aim += data[1].to_i
  end
end
puts depth * distance
