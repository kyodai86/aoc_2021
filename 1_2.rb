# frozen_string_literal: true

file_data = File.read('input/1.txt').split.map(&:to_i)
count = file_data.each_cons(4).count { |a, b, c, d| d > a }
puts count
