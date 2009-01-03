class Searcher
  def self.linear_search(array,token,low,high)
    for i in 0..(array.size - 1) do
      value = array[i]
      if (value > token)
        return -1
      elsif (value == token)
        return i
      end
    end
    return -1
  end
  
  def self.binary_search(array,token,low,high)
    diff = (high-low)
    center_index = low + (diff / 2).to_i
    center_value = array[center_index]
    if(center_value == token)
      center_index
    elsif diff <= 1
      return -1
    elsif center_value > token
      binary_search(array,token,low,center_index)
    else
      binary_search(array,token,center_index,high)
    end
  end
end