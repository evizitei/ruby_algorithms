require "sorter"

def test_sort(method)
  size = 10000
  puts "---------------------------"
  array = []
  size.times do |i|
    array[i] = rand(size)
  end
  puts "harnessing #{method}"
  puts "opening array: #{array[0]} to #{array[size-1]}"
  start_time = Time.now
  array = Sorter.send(method,array)
  end_time = Time.now
  puts "final array: #{array[0]} to #{array[size-1]}"
  puts "time: #{end_time - start_time}"
  puts "---------------------------"
end

puts "------Sorter Harness----------"
test_sort(:insertion_sort)
test_sort(:merge_sort)