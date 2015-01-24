def count array
  l = array.length
  result = 0
  for i in 0...l
    result += 1 if yield(array[i]) == true
  end
  result
end
