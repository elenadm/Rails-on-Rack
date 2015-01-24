def detect array
  l = array.length
  for i in 0...l
    break result = array[i] if yield(array[i]) == true
  end
  result
end
