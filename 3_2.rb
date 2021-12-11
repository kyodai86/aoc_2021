# frozen_string_literal: true

def b2d(arr)
  binary = arr.first.chars.map(&:to_i)
  binary.reverse.map.with_index do |elem, index|
    elem * 2**index
  end.sum
end

input = File.read('input/3.txt').split("\n")

input_oxygen = input
i = 0
while input_oxygen.size > 1
  one = input_oxygen.select { |num| num[i] == '1' }
  zero = input_oxygen.select { |num| num[i] == '0' }
  i += 1
  input_oxygen = one.size >= zero.size ? one : zero
end

input_co2 = input
i = 0
while input_co2.size > 1
  one = input_co2.select { |num| num[i] == '1' }
  zero = input_co2.select { |num| num[i] == '0' }
  i += 1
  input_co2 = zero.size <= one.size ? zero : one
end

puts b2d(input_oxygen) * b2d(input_co2)
