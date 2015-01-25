def any? array
  l = array.length
  result = false
  for i in 0...l
    break result = true if yield(array[i]) == true
  end
  result
end
