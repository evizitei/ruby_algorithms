require "sorter"

def test_sort(method)
  puts "---------------------------"
  array = [9,3,9977,7,43,90,433,65,1,8974,76,3,755,900,39,432,8,2,12,54,23,134,67456,12,666,155,1290,80,199,22,22,906,673,236,1111]
  puts "harnessing #{method}"
  puts "opening array:"
  puts array.join(",")
  start_time = Time.now
  array = Sorter.send(method,array)
  end_time = Time.now
  puts "final array:"
  puts array.join(",")
  puts "time: #{end_time - start_time}"
  puts "---------------------------"
end

puts "------Sorter Harness----------"
test_sort(:insertion_sort)
test_sort(:merge_sort)