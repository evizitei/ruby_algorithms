require "searcher"
require "../sorting/sorter"

SIZE = 20000
ARRAY = []
SIZE.times do |i|
  ARRAY[i] = rand(SIZE)
end
ARRAY = Sorter.merge_sort(ARRAY)
TOKEN = rand(SIZE)

def test_search(method)
  puts "---------------------------"
  puts "harnessing #{method}"
  puts "searching for #{TOKEN}"
  start_time = Time.now
  index = Searcher.send(method,ARRAY,TOKEN,0,SIZE - 1)
  end_time = Time.now
  puts "found at index: #{index}"
  puts "time: #{end_time - start_time}"
  puts "---------------------------"
end

puts "------Searcher Harness----------"
test_search(:linear_search)
test_search(:binary_search)