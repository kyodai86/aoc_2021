# frozen_string_literal: true

file_data = File.read('input/1.txt').split.map(&:to_i)
count = file_data.each_cons(2).count { |a, b| b > a }
puts count
