def select array
  l = array.length
  result = Array.new
  for i in 0...l
    result << array[i] if yield(array[i]) == true
  end
  result
end