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
    if array.size == 1
      return array
    else
      split_index = (array.size / 2).to_i
      first_sorted_half = self.merge_sort(array[0...split_index])
      second_sorted_half = self.merge_sort(array[split_index...array.size])
      return self.merge(first_sorted_half,second_sorted_half)
    end
  end
  
  def self.merge(list_1,list_2)
    list_1_head = list_2_head = 0
    merged_list = []
    while list_1_head < list_1.size or list_2_head < list_2.size
      list_1_element = (list_1_head < list_1.size) ? list_1[list_1_head] : nil
      list_2_element = (list_2_head < list_2.size) ? list_2[list_2_head] : nil
      if(list_2_element.nil? or (list_1_element != nil and list_2_element > list_1_element))
        merged_list << list_1_element
        list_1_head += 1
      else
        merged_list << list_2_element
        list_2_head += 1
      end
    end
    return merged_list
  end
end