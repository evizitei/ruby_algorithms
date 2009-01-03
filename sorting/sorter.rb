class Sorter
  def self.insertion_sort(array)
    for key_index in 1...array.size do
      key_element = array[key_index]
      insertion_index = key_index - 1
      while insertion_index >= 0 and array[insertion_index] > key_element
        array[insertion_index + 1] = array[insertion_index]
        insertion_index -= 1
      end
      array[insertion_index + 1] = key_element
    end
    array
  end
  
  def self.merge_sort(array)
    if array.size <= 1
      return array
    else
      split_index = (array.size / 2).to_i
      first_sorted_half = self.merge_sort(array[0...split_index])
      second_sorted_half = self.merge_sort(array[split_index...array.size])
      return self.merge(first_sorted_half,second_sorted_half)
    end
  end

  def self.quick_sort(array)
    if array.size <= 1
      return array
    else
      pivot = array[0]
      array.delete_at(0)
      less = []
      more = []
      array.each do |element|
        if element <= pivot
          less << element
        else
          more << element
        end
      end
      return [].concat(quick_sort(less)).concat([pivot]).concat(quick_sort(more))
    end
  end

protected
  def self.merge(list_1,list_2)
    list_1_element = list_1[0]
    list_2_element = list_2[0]
    merged_list = []
    while !list_1_element.nil? or !list_2_element.nil?
      if(list_2_element.nil? or (list_1_element != nil and list_2_element > list_1_element))
        merged_list << list_1_element
        list_1.delete_at(0)
        list_1_element = list_1[0]
      else
        merged_list << list_2_element
        list_2.delete_at(0)
        list_2_element = list_2[0]
      end
    end
    return merged_list
  end
end