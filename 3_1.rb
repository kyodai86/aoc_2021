# frozen_string_literal: true

def b2d(binary)
  binary.reverse.map.with_index do |elem, index|
    elem * 2**index
  end.sum
end

input = File.read('input/3.txt').split("\n")

sum_of_ones = input[0].gsub('1', '0').chars.map(&:to_i)
input.each do |line|
  sum_of_ones = [sum_of_ones, line.chars.map(&:to_i)].transpose.map(&:sum)
end

gamma_binary = sum_of_ones.map do |elem|
  elem > input.size / 2 ? 1 : 0
end

epsilon_binary = gamma_binary.map { |elem| elem == 1 ? 0 : 1 }

puts b2d(gamma_binary) * b2d(epsilon_binary)
