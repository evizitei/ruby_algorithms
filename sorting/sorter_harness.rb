require "sorter"

SIZE = 10000
ARRAY = []
SIZE.times do |i|
  ARRAY[i] = rand(SIZE)
end

def test_sort(method)
  array = Array.new(ARRAY)
  puts "---------------------------"
  puts "harnessing #{method}"
  puts "opening array: #{array[0]} to #{array[SIZE-1]}"
  start_time = Time.now
  array = Sorter.send(method,array)
  end_time = Time.now
  puts "final array: #{array[0]} to #{array[SIZE-1]}"
  puts "time: #{end_time - start_time}"
  puts "---------------------------"
end

puts "------Sorter Harness----------"
test_sort(:insertion_sort)
test_sort(:merge_sort)
test_sort(:quick_sort)