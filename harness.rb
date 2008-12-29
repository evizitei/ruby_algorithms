require "sorter"

puts "harnessing insertion sort"
array = [9,3,7,43,90,433,65,1,76,3,755,900,432,8,2,12,54]
puts "opening array:"
puts array.join(",")
array = Sorter.insertion_sort(array)
puts "final array:"
puts array.join(",")

