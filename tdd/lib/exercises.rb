def my_uniq(arr)
  result = []
  arr.each do |el|
    result << el unless result.include?(el)
  end
  result
end

class Array
  def two_sum
    result = []
    i = 0
    while i < self.length
      j = i + 1
      while j < self.length
        if self[i] + self[j] == 0
          result << [i, j]
        end
        j += 1
      end
      i += 1
    end
    result
  end
end

def my_transpose(arr)
  result = []

  arr.length.times do
    result << []
  end

  arr.each_with_index do |row,i|
    row.each_with_index do |col,j|
      result[i] << arr[j][i]
    end
  end
  result
end

def stock_picker(array)

  buy_price = nil
  sell_price = nil

  array.each_with_index do |price, day|
    
  end

end