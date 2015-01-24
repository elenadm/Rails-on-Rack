def all? array
  l = array.length
  result = true
  for i in 0...l
    break result = false if yield(array[i]) == false
  end
  puts result
end
